#ifndef EGG_GFXE_POST_EFFECT_HDR_H
#define EGG_GFXE_POST_EFFECT_HDR_H
#include <egg/types_egg.h>

#include <egg/gfxe/eggPostEffectBase.h>

#include <revolution/GX.h>

namespace EGG {

class PostEffectHDR : public PostEffectBase {
public:
    PostEffectHDR();
    virtual void reset();               // at 0x14
    virtual void setMaterialInternal(); // at 0x18

    void calcScale();

private:
    enum ETevStage {
        ETevStage_Extract,
        ETevStage_Amplify,
        ETevStage_Stabilize,

        ETevStage_Max
    };

    enum {
        EFlag_0 = 1 << 0,
    };

private:
    GXColor mHighlightColor; // at 0x20
    GXColor mGainColor;      // at 0x24
    f32 mHighlightScale;     // at 0x28
    f32 mGainScale;          // at 0x2C

    GXColor mFractionalGain;        // at 0x30
    GXColor mBrightnessThreshold;   // at 0x34
    GXColor mBrightnessColor;       // at 0x38
    GXTevScale mBrightnessTevScale; // at 0x3C
    GXTevScale mGainTevScale;       // at 0x40

    bool mIsSubtractive; // at 0x44
    u8 mFlags;           // at 0x45
};

} // namespace EGG

#endif
