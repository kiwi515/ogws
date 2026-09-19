#ifndef RP_GRAPHICS_DRAW_PATH_H
#define RP_GRAPHICS_DRAW_PATH_H
#include <Pack/types_pack.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

/**
 * @brief Base class for draw paths
 */
class RPGrpDrawPath {
protected:
    //! Scene renderer
    EGG::ScnRenderer* mpRenderer; // at 0x0
    //! Draw path implementation
    EGG::DrawPathBase* mpDrawPathBase; // at 0x4

public:
    /**
     * @brief Creates a draw path instance
     *
     * @tparam T Derived draw path class
     * @param pRenderer Scene renderer
     */
    template <typename T> static T* Construct(EGG::ScnRenderer* pRenderer);

    /**
     * @brief Constructor
     *
     * @param pRenderer Scene renderer
     * @param pDrawPathBase Draw path implementation
     */
    RPGrpDrawPath(EGG::ScnRenderer* pRenderer,
                  EGG::DrawPathBase* pDrawPathBase = NULL)
        : mpRenderer(pRenderer), mpDrawPathBase(pDrawPathBase) {}

    /**
     * @brief Destructor
     */
    virtual ~RPGrpDrawPath() {} // at 0x8

    /**
     * @brief Enables this draw path
     */
    virtual void On() { // at 0xC
        mpDrawPathBase->setEnable(true);
    }

    /**
     * @brief Disables this draw path
     */
    virtual void Off() { // at 0x10
        mpDrawPathBase->setEnable(false);
    }

    /**
     * @brief Tests whether this draw path is enabled
     */
    virtual bool IsEnable() const { // at 0x14
        return mpDrawPathBase->isEnable();
    }
};

//! @}

#endif
