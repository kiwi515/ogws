#include <egg/gfxe.h>

#include <revolution/GX.h>

namespace EGG {

PostEffectHDR::PostEffectHDR() {}

void PostEffectHDR::reset() {
    mBrightnessColor = DrawGX::WHITE;

    mFractionalGain = mBrightnessColor;
    mHighlightColor = mBrightnessColor;
    mBrightnessThreshold = mBrightnessColor;
    mGainColor = mBrightnessColor;

    mGainScale = 1.0f;
    mHighlightScale = 0.0f;

    mFlags = 0;
    mBrightnessTevScale = GX_CS_SCALE_1;
    mGainTevScale = GX_CS_SCALE_1;
}

void PostEffectHDR::calcScale() {
    f32 divisor = 6.0f;

    f32 scale = 1.0f / divisor;
    scale = mGainScale > scale ? mGainScale : scale;

    mIsSubtractive = false;
    scale = 1.0f / scale - 1.0f;

    if (scale <= 1.0f) {
        mBrightnessTevScale = GX_CS_SCALE_1;
        mGainTevScale = GX_CS_SCALE_1;

    } else if (scale <= 2.0f) {
        mBrightnessTevScale = GX_CS_SCALE_1;
        mGainTevScale = GX_CS_SCALE_2;
        scale = 0.5f * (scale - 1.0f);

    } else if (scale <= 3.0f) {
        mBrightnessTevScale = GX_CS_SCALE_1;
        mGainTevScale = GX_CS_SCALE_2;
        scale = 0.5f * (1.0f + (scale - 2.0f));

    } else if (scale <= 4.0f) {
        mBrightnessTevScale = GX_CS_SCALE_1;
        mGainTevScale = GX_CS_SCALE_4;
        scale = 0.25f * (scale - 3.0f);

    } else if (scale <= 5.0f) {
        mBrightnessTevScale = GX_CS_SCALE_1;
        mGainTevScale = GX_CS_SCALE_4;
        scale = 0.25f * (1.0f + (scale - 4.0f));
    }

    GXColor threshold;
    scaleRGBA(&threshold, mHighlightColor, mHighlightScale, true);

    GXColor frac;
    scaleRGBA(&frac, mGainColor, scale, true);

    mFractionalGain = frac;
    mBrightnessThreshold = threshold;
}

void PostEffectHDR::setMaterialInternal() {
    calcScale();
    loadTextureInternal();

    bool useStage2 = mFlags & EFlag_0;
    int tevStageNum = useStage2 + 2;

    setMatColorChannel();

    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

    setMatInd();

    GXSetTevKColor(GX_KCOLOR0, mBrightnessThreshold);
    GXSetTevKColor(GX_KCOLOR1, mFractionalGain);

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE,
                          GX_CH_ALPHA);

    GXSetNumTevStages(tevStageNum);

    for (int i = 0; i < tevStageNum; i++) {
        GXSetTevDirect(static_cast<GXTevStageID>(i));

        GXSetTevSwapMode(static_cast<GXTevStageID>(i), GX_TEV_SWAP0,
                         GX_TEV_SWAP0);

        switch (i) {
        case ETevStage_Extract: {
            GXSetTevKColorSel(static_cast<GXTevStageID>(i), GX_TEV_KCSEL_K0);

            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD0,
                          getCapTexture()->getLoadMap(), GX_COLOR_NULL);

            // Tev0.RGB = (Tex.RGB - mBrightnessThreshold.RGB)
            GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_KONST,
                            GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
            // Tev0.RGB *= mBrightnessTevScale
            GXSetTevColorOp(static_cast<GXTevStageID>(i), GX_TEV_SUB,
                            GX_TB_ZERO, mBrightnessTevScale, GX_TRUE,
                            GX_TEVREG0);
            break;
        }

        case ETevStage_Amplify: {
            GXSetTevKColorSel(static_cast<GXTevStageID>(i), GX_TEV_KCSEL_K1);

            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD_NULL,
                          GX_TEXMAP_NULL, GX_COLOR_NULL);

            if (!useStage2) {
                // Color = Tev0.RGB (+/-) (mFractionalGain.RGB * Tev0.RGB)
                GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_ZERO,
                                GX_CC_C0, GX_CC_KONST, GX_CC_C0);
                // Color *= mGainTevScale
                GXSetTevColorOp(static_cast<GXTevStageID>(i),
                                mIsSubtractive ? GX_TEV_SUB : GX_TEV_ADD,
                                GX_TB_ZERO, mGainTevScale, GX_TRUE, GX_TEVPREV);
            } else {
                // Color = mFractionalGain.RGB * Tev0.RGB
                GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_ZERO,
                                GX_CC_C0, GX_CC_KONST, GX_CC_ZERO);
                GXSetTevColorOp(static_cast<GXTevStageID>(i), GX_TEV_ADD,
                                GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            }
            break;
        }

        case ETevStage_Stabilize: {
            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD_NULL,
                          GX_TEXMAP_NULL, GX_COLOR_NULL);

            // Color = Tev0.RGB (+/-) ((1 - Tev0.RGB) * Color)
            GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_CPREV,
                            GX_CC_ZERO, GX_CC_C0, GX_CC_C0);
            // Color *= mGainTevScale
            GXSetTevColorOp(static_cast<GXTevStageID>(i),
                            mIsSubtractive ? GX_TEV_SUB : GX_TEV_ADD,
                            GX_TB_ZERO, mGainTevScale, GX_TRUE, GX_TEVPREV);
            break;
        }

        default: {
            break;
        }
        }

        GXSetTevAlphaIn(static_cast<GXTevStageID>(i), GX_CA_ZERO, GX_CA_ZERO,
                        GX_CA_ZERO, GX_CA_KONST);
        GXSetTevAlphaOp(static_cast<GXTevStageID>(i), GX_TEV_ADD, GX_TB_ZERO,
                        GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    }

    setMatPE();
}

} // namespace EGG
