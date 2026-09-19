#ifndef RP_GRAPHICS_DRAW_PATH_SV_H
#define RP_GRAPHICS_DRAW_PATH_SV_H
#include <Pack/types_pack.h>

#include <Pack/RPGraphics/RPGrpDrawPath.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

/**
 * @brief Shadow volume draw path
 */
class RPGrpDrawPathSV : public RPGrpDrawPath {
public:
    /**
     * @brief Constructor
     *
     * @param pRenderer Scene renderer
     */
    explicit RPGrpDrawPathSV(EGG::ScnRenderer* pRenderer)
        : RPGrpDrawPath(pRenderer, pRenderer->getDrawPathBase(
                                       EGG::ScnRenderer::cDrawPath_SV)) {

        mpSV = static_cast<EGG::DrawPathShadowVolume*>(
            pRenderer->getDrawPathBase(EGG::ScnRenderer::cDrawPath_SV));
    }

private:
    //! Shadow volume implementation
    EGG::DrawPathShadowVolume* mpSV; // at 0xC
};

//! @}

#endif
