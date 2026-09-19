#ifndef RP_GRAPHICS_DRAW_PATH_HDR_H
#define RP_GRAPHICS_DRAW_PATH_HDR_H
#include <Pack/types_pack.h>

#include <Pack/RPGraphics/RPGrpDrawPath.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

/**
 * @brief High dynamic range (HDR) draw path
 */
class RPGrpDrawPathHDR : public RPGrpDrawPath {
public:
    /**
     * @brief Constructor
     *
     * @param pRenderer Scene renderer
     */
    explicit RPGrpDrawPathHDR(EGG::ScnRenderer* pRenderer)
        : RPGrpDrawPath(pRenderer, pRenderer->getDrawPathBase(
                                       EGG::ScnRenderer::cDrawPath_HDR)) {}
};

//! @}

#endif
