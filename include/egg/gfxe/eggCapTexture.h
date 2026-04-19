#ifndef EGG_GFXE_CAP_TEXTURE_H
#define EGG_GFXE_CAP_TEXTURE_H
#include <egg/types_egg.h>

#include <egg/gfxe/eggCpuTexture.h>

#include <revolution/GX.h>

namespace EGG {

class CapTexture : public CpuTexture {
public:
    CapTexture() {}
    CapTexture(u16 w, u16 h, GXTexFmt fmt) : CpuTexture(w, h, fmt) {}

    virtual void configure();          // at 0xC
    virtual void load(GXTexMapID map); // at 0x14

    void capture(u16 x, u16 y, bool mipmap = false, int format = -1);

    GXTexMapID getLoadMap() const {
        return mLoadMap;
    }

    void setClearColor(const GXColor& rColor) {
        mClearColor = rColor;
    }
    void setClearZ(u32 clearZ) {
        mClearZ = clearZ;
    }

    void setVFilter(const u8* const pFilter) {
        enableVFilter();
        setVFilterInternal(pFilter);
    }
    void setVFilterBlur() {
        enableVFilter();
        setVFilterInternal(VFILTER_BLUR);
    }
    void setVFilterOff() {
        setVFilterInternal(VFILTER_OFF);
    }

    bool checkColorUpdate() const {
        return testFlag(EFlag_ColorUpdate);
    }
    void enableColorUpdate() {
        setFlag(EFlag_ColorUpdate);
    }
    void disableColorUpdate() {
        clearFlag(EFlag_ColorUpdate);
    }

    bool checkAlphaUpdate() const {
        return testFlag(EFlag_AlphaUpdate);
    }
    void enableAlphaUpdate() {
        setFlag(EFlag_AlphaUpdate);
    }
    void disableAlphaUpdate() {
        clearFlag(EFlag_AlphaUpdate);
    }

    bool checkZBufferUpdate() const {
        return testFlag(EFlag_ZBufferUpdate);
    }
    void enableZBufferUpdate() {
        setFlag(EFlag_ZBufferUpdate);
    }
    void disableZBufferUpdate() {
        clearFlag(EFlag_ZBufferUpdate);
    }

    bool checkVFilterEnable() const {
        return testFlag(EFlag_VFilterEnable);
    }
    void enableVFilter() {
        setFlag(EFlag_VFilterEnable);
    }
    void disableVFilter() {
        clearFlag(EFlag_VFilterEnable);
    }

    bool checkPixModeSync() const {
        return testFlag(EFlag_PixModeSync);
    }
    void enablePixModeSync() {
        setFlag(EFlag_PixModeSync);
    }
    void disablePixModeSync() {
        clearFlag(EFlag_PixModeSync);
    }

private:
    enum {
        EFlag_ColorUpdate = 1 << 3,
        EFlag_AlphaUpdate = 1 << 4,
        EFlag_ZBufferUpdate = 1 << 5,
        EFlag_VFilterEnable = 1 << 6,
        EFlag_PixModeSync = 1 << 7,
    };

private:
    void setVFilterInternal(const u8* const pFilter) {
        for (int i = 0; i < GX_VFILTER_SZ; i++) {
            mVerticalFilter[i] = pFilter[i];
        }
    }

private:
    GXTexMapID mLoadMap;               // at 0x18
    GXColor mClearColor;               // at 0x1C
    u32 mClearZ;                       // at 0x20
    u8 mVerticalFilter[GX_VFILTER_SZ]; // at 0x24

    static const u8 SAMPLE_PATTERN_OFF[12][2];
    static const u8 VFILTER_BLUR[GX_VFILTER_SZ];
    static const u8 VFILTER_OFF[GX_VFILTER_SZ];
};

} // namespace EGG

#endif
