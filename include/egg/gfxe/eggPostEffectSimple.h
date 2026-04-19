#ifndef EGG_GFXE_POST_EFFECT_SIMPLE_H
#define EGG_GFXE_POST_EFFECT_SIMPLE_H
#include <egg/types_egg.h>

#include <egg/gfxe/eggPostEffectBase.h>

namespace EGG {

class PostEffectSimple : public PostEffectBase {
public:
    PostEffectSimple();
    virtual void reset();               // at 0x14
    virtual void setMaterialInternal(); // at 0x18

private:
    enum EBlendMode {
        //! Color blends with framebuffer
        EBlendMode_Opa,
        //! Color blends with framebuffer where texture is visible
        EBlendMode_Xlu,
        //! Color blends with framebuffer, texture alpha controls intensity
        EBlendMode_Intensity,
    };

private:
    GXColor mColor; // at 0x20
    f32 mIntensity; // at 0x24
    u32 unk28;
    EBlendMode mBlendMode; // at 0x2C
};

} // namespace EGG

#endif
