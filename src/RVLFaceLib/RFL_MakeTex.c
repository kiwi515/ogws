#include <RVLFaceLib/RVLFaceLibInternal.h>
#include <math.h>

void RFLiSetupCopyTex(GXTexFmt fmt, u16 width, u16 height, void* buffer,
                      GXColor clearColor);

void RFLiMakeTexture(const RFLiCharInfo* info, u8** buffer,
                     RFLResolution resolution);

void RFLiSetup2DCameraAndParam(void);

void RFLiSetTev4Mouth(u32 color);

void RFLiSetTev4Eye(u32 color, u32 type);

void RFLiSetFaceParts(const RFLiCharInfo* info, RFLiFaceParts* face,
                      RFLResolution resolution);

void RFLiCapture(u8* buffer, const RFLiCharInfo* info, RFLiFaceParts* face,
                 RFLResolution resolution);

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