#include <egg/gfxe.h>

#include <revolution/GX.h>

namespace EGG {

PostEffectHDR::PostEffectHDR() {}

void PostEffectHDR::reset() {
    COLOR_0x38 = DrawGX::WHITE;
    COLOR_0x30 = COLOR_0x38;
    COLOR_0x20 = COLOR_0x38;
    COLOR_0x34 = COLOR_0x38;
    COLOR_0x24 = COLOR_0x38;

    FLOAT_0x2C = 1.0f;
    FLOAT_0x28 = 0.0f;

    BYTE_0x45 = 0;
    mTevScale = GX_CS_SCALE_1;
    mTevScale2 = GX_CS_SCALE_1;
}

void PostEffectHDR::setupRange() {
    f32 six = 6.0f;
    f32 scale = 1.0f / six;
    scale = (FLOAT_0x2C > scale) ? FLOAT_0x2C : scale;

    BOOL_0x44 = false;
    scale = 1.0f / scale - 1.0f;

    // Apply fractional scale between GX TEV scale levels
    if (scale <= 1.0f) {
        mTevScale = GX_CS_SCALE_1;
        mTevScale2 = GX_CS_SCALE_1;

    } else if (scale <= 2.0f) {
        mTevScale = GX_CS_SCALE_1;
        mTevScale2 = GX_CS_SCALE_2;
        scale = 0.5f * (scale - 1.0f);

    } else if (scale <= 3.0f) {
        mTevScale = GX_CS_SCALE_1;
        mTevScale2 = GX_CS_SCALE_2;
        scale = 0.5f * (1.0f + (scale - 2.0f));

    } else if (scale <= 4.0f) {
        mTevScale = GX_CS_SCALE_1;
        mTevScale2 = GX_CS_SCALE_4;
        scale = 0.25f * (scale - 3.0f);

    } else if (scale <= 5.0f) {
        mTevScale = GX_CS_SCALE_1;
        mTevScale2 = GX_CS_SCALE_4;
        scale = 0.25f * (1.0f + (scale - 4.0f));
    }

    GXColor sp0C;
    scaleRGBA(&sp0C, COLOR_0x20, FLOAT_0x28, true);
    GXColor sp08;
    scaleRGBA(&sp08, COLOR_0x24, scale, true);

    COLOR_0x30 = sp08;
    COLOR_0x34 = sp0C;
}

void PostEffectHDR::setMaterialInternal() {
    setupRange();
    loadTextureInternal();

    bool useSomeStage = BYTE_0x45 & 1;
    int tevStageNum = useSomeStage + 2;

    setMatColorChannel();

    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

    setMatInd();

    GXSetTevKColor(GX_KCOLOR0, COLOR_0x34);
    GXSetTevKColor(GX_KCOLOR1, COLOR_0x30);

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE,
                          GX_CH_ALPHA);

    GXSetNumTevStages(tevStageNum);

    for (int i = 0; i < tevStageNum; i++) {
        GXSetTevDirect(static_cast<GXTevStageID>(i));

        GXSetTevSwapMode(static_cast<GXTevStageID>(i), GX_TEV_SWAP0,
                         GX_TEV_SWAP0);

        switch (i) {
        case TevStage_0: {
            GXSetTevKColorSel(static_cast<GXTevStageID>(i), GX_TEV_KCSEL_K0);

            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD0,
                          getCapTexture()->getLoadMap(), GX_COLOR_NULL);

            // Color = Tex.RGB - COLOR_0x34.RGB
            // Color *= mTevScale
            GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_KONST,
                            GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
            GXSetTevColorOp(static_cast<GXTevStageID>(i), GX_TEV_SUB,
                            GX_TB_ZERO, mTevScale, GX_TRUE, GX_TEVREG0);
            break;
        }

        case TevStage_1: {
            GXSetTevKColorSel(static_cast<GXTevStageID>(i), GX_TEV_KCSEL_K1);

            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD_NULL,
                          GX_TEXMAP_NULL, GX_COLOR_NULL);

            if (!useSomeStage) {
                // Color = Tev0.RGB (+/-) (COLOR_0x30.RGB * Tev0.RGB)
                // Color *= mTevScale2
                GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_ZERO,
                                GX_CC_C0, GX_CC_KONST, GX_CC_C0);
                GXSetTevColorOp(static_cast<GXTevStageID>(i),
                                BOOL_0x44 ? GX_TEV_SUB : GX_TEV_ADD, GX_TB_ZERO,
                                mTevScale2, GX_TRUE, GX_TEVPREV);
            } else {
                // Color = COLOR_0x30.RGB * Tev0.RGB
                GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_ZERO,
                                GX_CC_C0, GX_CC_KONST, GX_CC_ZERO);
                GXSetTevColorOp(static_cast<GXTevStageID>(i), GX_TEV_ADD,
                                GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            }
            break;
        }

        case TevStage_2: {
            GXSetTevOrder(static_cast<GXTevStageID>(i), GX_TEXCOORD_NULL,
                          GX_TEXMAP_NULL, GX_COLOR_NULL);

            // Color = Tev0.RGB (+/-) ((1 - Tev0.RGB) * Prev)
            // Color *= mTevScale2
            GXSetTevColorIn(static_cast<GXTevStageID>(i), GX_CC_CPREV,
                            GX_CC_ZERO, GX_CC_C0, GX_CC_C0);
            GXSetTevColorOp(static_cast<GXTevStageID>(i),
                            BOOL_0x44 ? GX_TEV_SUB : GX_TEV_ADD, GX_TB_ZERO,
                            mTevScale2, GX_TRUE, GX_TEVPREV);
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
