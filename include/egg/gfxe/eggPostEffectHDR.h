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

    void setupRange();

private:
    enum TevStage {
        TevStage_0,
        TevStage_1,
        TevStage_2,

        TevStage_Max
    };

private:
    GXColor COLOR_0x20;
    GXColor COLOR_0x24;
    f32 FLOAT_0x28;
    f32 FLOAT_0x2C;
    GXColor COLOR_0x30;
    GXColor COLOR_0x34;
    GXColor COLOR_0x38;
    GXTevScale mTevScale;  // at 0x3C
    GXTevScale mTevScale2; // at 0x40
    bool BOOL_0x44;
    u8 BYTE_0x45;
};

} // namespace EGG

#endif
