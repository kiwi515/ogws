#ifndef RP_GRAPHICS_DRAW_PATH_DOF_H
#define RP_GRAPHICS_DRAW_PATH_DOF_H
#include <Pack/types_pack.h>

#include <Pack/RPGraphics/RPGrpDrawPath.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

/**
 * @brief Depth-of-field draw path
 */
class RPGrpDrawPathDOF : public RPGrpDrawPath {
public:
    /**
     * @brief Constructor
     *
     * @param pRenderer Scene renderer
     */
    explicit RPGrpDrawPathDOF(EGG::ScnRenderer* pRenderer)
        : RPGrpDrawPath(pRenderer, pRenderer->getDrawPathBase(
                                       EGG::ScnRenderer::cDrawPath_DOF)) {

        mpDOF = static_cast<EGG::DrawPathDOF*>(
            pRenderer->getDrawPathBase(EGG::ScnRenderer::cDrawPath_DOF));

        // TODO(kiwi) Need to figure out the EGG class layout
        // mpDOF->unk80 = 0;
    }

private:
    //! Depth-of-field implementation
    EGG::DrawPathDOF* mpDOF; // at 0xC
};

//! @}

#endif
