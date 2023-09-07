#include <RVLFaceLib/RVLFaceLibInternal.h>
#include <math.h>

void RFLiSetupCopyTex(GXTexFmt fmt, u16 width, u16 height, void* buffer,
                      GXColor clearColor) {
    GXSetFog(GX_FOG_NONE, (GXColor){0, 0, 0, 0}, 1.0f, 1.0f, 0.0f, 0.0f);
    GXSetColorUpdate(TRUE);
    GXSetAlphaUpdate(TRUE);
    GXSetDstAlpha(FALSE, 0);
    GXSetZMode(TRUE, GX_LEQUAL, TRUE);
    GXSetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);
    GXSetCopyFilter(FALSE, NULL, FALSE, NULL);
    GXSetCopyClamp(GX_CLAMP_ALL);
    GXSetTexCopySrc(0, 0, width, height);
    GXSetTexCopyDst(width, height, fmt, FALSE);
    GXSetCopyClear(clearColor, GX_CLEAR_Z_MAX);
    DCInvalidateRange(buffer, 2 * width * height);
    GXCopyTex(buffer, TRUE);
    GXPixModeSync();
}

void RFLiMakeTexture(const RFLiCharInfo* info, u8** buffer,
                     RFLResolution resolution);

void RFLiInitRFLTexture(RFLiTexObj* tobj) {
    RFLiTexture* tex = tobj->texture;
    GXInitTexObj(&tobj->tobj, RFLiGetTexImage(tex), tex->width, tex->height,
                 tex->format, GX_CLAMP, GX_CLAMP, FALSE);
}

void RFLiSetup2DCameraAndParam(void) {
    Mtx44 proj;

    C_MTXOrtho(proj, 0.0f, 448.0f, 0.0f, 608.0f, 0.0f, 1.0f);
    GXSetProjection(proj, GX_ORTHOGRAPHIC);
    GXSetViewport(0.0f, 0.0f, 608.0f, 448.0f, 0.0f, 1.0f);
    GXSetZScaleOffset(1.0f, 0.0f);
    GXSetCullMode(GX_CULL_BACK);
    GXSetZMode(FALSE, GX_LEQUAL, FALSE);
    GXSetZCompLoc(FALSE);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_NEVER, 0);
    GXSetAlphaUpdate(TRUE);
    GXSetDither(FALSE);
    GXClearVtxDesc();
    GXInvalidateVtxCache();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_S16, 8);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL,
                  GX_DF_NONE, GX_DA_MEDIUM);
    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX_IDENT);
    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE,
                          GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED,
                          GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN,
                          GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE,
                          GX_CH_ALPHA);
}

void RFLiSetTev4Mole(void) {
    GXSetNumTevStages(1);

    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevColor(GX_TEVREG0, RFLi_MOLE_COLOR0);
}

void RFLiSetTev4Mouth(u32 color) {
    GXSetNumTevStages(3);

    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);

    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP3, GX_TEV_SWAP2);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_C1, GX_CC_TEXC,
                    GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);

    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP2, GX_TEV_SWAP3);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC,
                    GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);

    GXSetTevColor(GX_TEVREG0, RFLi_MOUTH_COLOR0[color]);
    GXSetTevColor(GX_TEVREG1, RFLi_MOUTH_COLOR1[color]);
}

void RFLiSetTev4Eye(u32 color, u32 type) {
    GXColor color0;
    GXColor color1;

    GXSetNumTevStages(3);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP3, GX_TEV_SWAP3);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_C1, GX_CC_TEXC,
                    GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP2, GX_TEV_SWAP2);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC,
                    GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);

    switch (type) {
    case 9:
        color0 = (GXColor){255, 130, 0, 255};
        break;
    case 20:
        color0 = (GXColor){0, 255, 255, 255};
        break;
    default:
        color0 = (GXColor){0, 0, 0, 255};
        break;
    }

    color1 = RFLi_EYE_COLOR1[color];

    GXSetTevColor(GX_TEVREG0, color0);
    GXSetTevColor(GX_TEVREG1, color1);
}

void RFLiSetTev4Eyebrow(u32 color) {
    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevColor(GX_TEVREG0, RFLi_EYEBROW_COLOR0[color]);
}

void RFLiSetTev4Mustache(u32 color) {
    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                    GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
                    GX_TEVPREV);
    GXSetTevColor(GX_TEVREG0, RFLi_BEARD_COLOR0[color]);
}

void RFLiSetFaceParts(const RFLiCharInfo* info, RFLiFaceParts* face,
                      RFLi_MASKRSL resolution) {
    f32 eyeX = RFLi_TEX_EYE_BASE_X + RFLi_TEX_SCALE_X * info->eye.x;
    f32 eyeY = RFLi_TEX_EYE_BASE_Y + 1.16f * RFLi_TEX_SCALE_Y * info->eye.y;
    f32 eyeW = RFLi_TEX_EYE_BASE_W * RFLi_TEX_SCALE2DIM(info->eye.scale);
    f32 eyeH = RFLi_TEX_EYE_BASE_H * RFLi_TEX_SCALE2DIM(info->eye.scale);
    f32 eyeA = RFLi_TEX_ROTATE2ANG(info->eye.rotate +
                                   RFLi_EYE_ROT_OFFSET[info->eye.type]);

    f32 eyebrowX = RFLi_TEX_EYEBROW_BASE_X + RFLi_TEX_SCALE_X * info->eyebrow.x;
    f32 eyebrowY =
        RFLi_TEX_EYEBROW_BASE_Y + 1.16f * RFLi_TEX_SCALE_Y * info->eyebrow.y;
    f32 eyebrowW =
        RFLi_TEX_EYEBROW_BASE_W * RFLi_TEX_SCALE2DIM(info->eyebrow.scale);
    f32 eyebrowH =
        RFLi_TEX_EYEBROW_BASE_H * RFLi_TEX_SCALE2DIM(info->eyebrow.scale);
    f32 eyebrowA = RFLi_TEX_ROTATE2ANG(
        info->eyebrow.rotate + RFLi_EYEBROW_ROT_OFFSET[info->eyebrow.type]);

    f32 mouthY =
        RFLi_TEX_MOUTH_BASE_Y + 1.16f * RFLi_TEX_SCALE_Y * info->mouth.y;
    f32 mouthW = RFLi_TEX_MOUTH_BASE_W * RFLi_TEX_SCALE2DIM(info->mouth.scale);
    f32 mouthH = RFLi_TEX_MOUTH_BASE_H * RFLi_TEX_SCALE2DIM(info->mouth.scale);

    f32 mustacheY =
        RFLi_TEX_MUSTACHE_BASE_Y + 1.16f * RFLi_TEX_SCALE_Y * info->beard.y;
    f32 mustacheW =
        RFLi_TEX_MUSTACHE_BASE_W * RFLi_TEX_SCALE2DIM(info->beard.scale);
    f32 mustacheH =
        RFLi_TEX_MUSTACHE_BASE_H * RFLi_TEX_SCALE2DIM(info->beard.scale);

    f32 moleX = RFLi_TEX_MOLE_BASE_X + 2.0f * RFLi_TEX_SCALE_X * info->mole.x;
    f32 moleY = RFLi_TEX_MOLE_BASE_Y + 1.16f * RFLi_TEX_SCALE_Y * info->mole.y;
    f32 moleW = RFLi_TEX_MOLE_BASE_W + RFLi_TEX_SCALE2DIM(info->mole.scale);
    f32 moleH = RFLi_TEX_MOLE_BASE_H + RFLi_TEX_SCALE2DIM(info->mole.scale);

    f32 resolution_ = RFLi_TEX_UNIT(resolution);

    face->eyeR.x = resolution_ * (32.0f - eyeX);
    face->eyeR.y = eyeY * resolution_;
    face->eyeR.width = eyeW * resolution_;
    face->eyeR.height = eyeH * resolution_;
    face->eyeR.angle = eyeA;
    face->eyeR.origin = RFL_ORIGIN_RIGHT;

    face->eyeL.x = resolution_ * (32.0f + eyeX);
    face->eyeL.y = eyeY * resolution_;
    face->eyeL.width = eyeW * resolution_;
    face->eyeL.height = eyeH * resolution_;
    face->eyeL.angle = 360.0f - eyeA;
    face->eyeL.origin = RFL_ORIGIN_LEFT;

    face->eyebrowR.x = resolution_ * (32.0f - eyebrowX);
    face->eyebrowR.y = eyebrowY * resolution_;
    face->eyebrowR.width = eyebrowW * resolution_;
    face->eyebrowR.height = eyebrowH * resolution_;
    face->eyebrowR.angle = eyebrowA;
    face->eyebrowR.origin = RFL_ORIGIN_RIGHT;

    face->eyebrowL.x = resolution_ * (32.0f + eyebrowX);
    face->eyebrowL.y = eyebrowY * resolution_;
    face->eyebrowL.width = eyebrowW * resolution_;
    face->eyebrowL.height = eyebrowH * resolution_;
    face->eyebrowL.angle = 360.0f - eyebrowA;
    face->eyebrowL.origin = RFL_ORIGIN_LEFT;

    face->mouth.x = 32.0f * resolution_;
    face->mouth.y = mouthY * resolution_;
    face->mouth.width = mouthW * resolution_;
    face->mouth.height = mouthH * resolution_;
    face->mouth.angle = 0.0f;
    face->mouth.origin = RFL_ORIGIN_CENTER;

    face->mustacheR.x = 32.0f * resolution_;
    face->mustacheR.y = mustacheY * resolution_;
    face->mustacheR.width = mustacheW * resolution_;
    face->mustacheR.height = mustacheH * resolution_;
    face->mustacheR.angle = 0.0f;
    face->mustacheR.origin = RFL_ORIGIN_RIGHT;

    face->mustacheL.x = 32.0f * resolution_;
    face->mustacheL.y = mustacheY * resolution_;
    face->mustacheL.width = mustacheW * resolution_;
    face->mustacheL.height = mustacheH * resolution_;
    face->mustacheL.angle = 0.0f;
    face->mustacheL.origin = RFL_ORIGIN_LEFT;

    face->mole.x = moleX * resolution_;
    face->mole.y = moleY * resolution_;
    face->mole.width = moleW * resolution_;
    face->mole.height = moleH * resolution_;
    face->mole.angle = 0.0f;
    face->mole.origin = RFL_ORIGIN_CENTER;
}

void RFLiCapture(u8* buffer, const RFLiCharInfo* info, RFLiFaceParts* face,
                 RFLi_MASKRSL resolution) {
    f32 vp[6];

    GXInvalidateTexAll();
    GXGetViewportv(vp);
    RFLiSetup2DCameraAndParam();

    GXSetTevDirect(GX_TEVSTAGE0);
    GXSetTevDirect(GX_TEVSTAGE1);
    GXSetTevDirect(GX_TEVSTAGE2);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_INVDSTALPHA, GX_BL_DSTALPHA, GX_LO_SET);
    GXSetColorUpdate(TRUE);

    RFLiSetTev4Mustache(info->beard.color);
    RFLiDrawFaceParts(&face->mustacheR);
    RFLiDrawFaceParts(&face->mustacheL);

    RFLiSetTev4Mouth(info->mouth.color);
    RFLiDrawFaceParts(&face->mouth);

    RFLiSetTev4Eyebrow(info->eyebrow.color);
    RFLiDrawFaceParts(&face->eyebrowR);
    RFLiDrawFaceParts(&face->eyebrowL);

    RFLiSetTev4Eye(info->eye.color, info->eye.type);
    RFLiDrawFaceParts(&face->eyeR);
    RFLiDrawFaceParts(&face->eyeL);

    RFLiSetTev4Mole();
    RFLiDrawFaceParts(&face->mole);

    GXSetColorUpdate(FALSE);
    GXCopyTex(buffer, TRUE);
    GXPixModeSync();
    GXSetBlendMode(GX_BM_BLEND, GX_BL_INVDSTALPHA, GX_BL_ONE, GX_LO_SET);

    RFLiSetTev4Mustache(info->beard.color);
    RFLiDrawFaceParts(&face->mustacheR);
    RFLiDrawFaceParts(&face->mustacheL);

    RFLiSetTev4Mouth(info->mouth.color);
    RFLiDrawFaceParts(&face->mouth);

    RFLiSetTev4Eyebrow(info->eyebrow.color);
    RFLiDrawFaceParts(&face->eyebrowR);
    RFLiDrawFaceParts(&face->eyebrowL);

    RFLiSetTev4Eye(info->eye.color, info->eye.type);
    RFLiDrawFaceParts(&face->eyeR);
    RFLiDrawFaceParts(&face->eyeL);

    RFLiSetTev4Mole();
    RFLiDrawFaceParts(&face->mole);

    GXSetColorUpdate(TRUE);
    DCInvalidateRange(buffer, RFLiGetMaskSize(resolution));
    GXCopyTex(buffer, 1);
    GXPixModeSync();
    GXSetViewportv(vp);
}

void RFLiDrawFaceParts(RFLiPart* part) {
    GXLoadTexObj(&part->ngtobj.tobj, GX_TEXMAP0);
    RFLiDrawQuad(part->x, part->y, part->width, part->height, part->angle,
                 part->origin);
}

void RFLiDrawQuad(f32 x, f32 y, f32 width, f32 height, f32 rotZ,
                  RFL_ORIGIN origin) {
    Mtx rot;
    Mtx pos;
    f32 baseX;
    s16 s0;
    s16 s1;

    PSMTXIdentity(pos);
    PSMTXScaleApply(pos, pos, width, height, 1.0f);
    PSMTXRotRad(rot, (M_PI / 180.0f) * rotZ, 'z');
    PSMTXConcat(rot, pos, pos);
    PSMTXScaleApply(pos, pos, RFLi_TEX_SCALE_X, RFLi_TEX_SCALE_Y, 1.0f);
    PSMTXTransApply(pos, pos, x, y, 1.0f);

    GXLoadPosMtxImm(pos, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);

    switch (origin) {
    case RFL_ORIGIN_CENTER:
        baseX = -0.5f;
        s0 = 256;
        s1 = 0;
        break;
    case RFL_ORIGIN_RIGHT:
        baseX = -1.0f;
        s0 = 256;
        s1 = 0;
        break;
    case RFL_ORIGIN_LEFT:
        baseX = 0.0f;
        s0 = 0;
        s1 = 256;
        break;
    }

    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    {
        GXPosition2f32(1.0 + baseX, -0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s0, 0);

        GXPosition2f32(1.0 + baseX, 0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s0, 256);

        GXPosition2f32(baseX, 0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s1, 256);

        GXPosition2f32(baseX, -0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s1, 0);
    }
    GXEnd();
}

RFLi_MASKRSL RFLiGetMaxMaskRsl(RFLResolution resolution) {
    switch (resolution) {
    case RFLResolution_64:
    case RFLResolution_64M:
        return RFLi_MASKRSL_64;
    case RFLResolution_128:
    case RFLResolution_128M:
        return RFLi_MASKRSL_128;
    case RFLResolution_256:
    case RFLResolution_256M:
        return RFLi_MASKRSL_256;
    default:
        return RFLi_MASKRSL_64;
    }
}

u32 RFLiGetMaskSize(RFLi_MASKRSL resolution) {
    return 2 * (resolution * resolution);
}

u32 RFLiGetMaskBufSize(RFLResolution resolution) {
    u32 size = 0;

    if (resolution & 32) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_32);
    }

    if (resolution & 64) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_64);
    }

    if (resolution & 128) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_128);
    }

    if (resolution & 256) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_256);
    }

    return size;
}