#include <RVLFaceLib/RVLFaceLibInternal.h>
#include <math.h>

const GXColor RFLi_MOLE_COLOR0 = {18, 15, 15, 255};

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
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_TM_IDENTITY);
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

void RFLiSetTev4Mouth(u32 color);

void RFLiSetTev4Eye(u32 color, u32 type);

void RFLiSetTev4Eyebrow(u32 color);

void RFLiSetTev4Mustache(u32 color);

void RFLiSetFaceParts(const RFLiCharInfo* info, RFLiFaceParts* face,
                      RFLi_MASKRSL resolution);

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

    if (RFLiGetManager()->modelDrawCb == NULL) {
        GXDrawDone();
    } else {
        RFLiGetManager()->modelDrawCb();
    }

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
    PSMTXScaleApply(pos, pos, 0.88961464f, 0.9276675f, 1.0f);
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