#ifndef RP_GRAPHICS_MODEL_SCENE_H
#define RP_GRAPHICS_MODEL_SCENE_H
#include <Pack/types_pack.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

// Forward declarations
class RPGrpCamera;
class RPGrpDrawPathManager;
class RPGrpFogManager;
class RPGrpLightManager;
class RPGrpModel;
class RPGrpScreen;

/**
 * @brief Model rendering scene
 */
class RPGrpModelScene {
private:
    //! Allocator used for model-related allocations
    static EGG::Allocator* spAllocator;

private:
    char unk00[0xC];
    RPGrpLightManager* mpLightManager;       // at 0xC
    RPGrpFogManager* mpFogManager;           // at 0x10
    RPGrpDrawPathManager* mpDrawPathManager; // at 0x14
    char unk18[0x9C - 0x18];
    EGG::ScnRootEx* mpScnRootEx; // at 0x9C
    char unkA0[0x4];

public:
    RPGrpModelScene(u8 drawPathFlag, u32 viewNum,
                    RPGrpLightManager* pLightManager,
                    RPGrpFogManager* pFogManager);

    virtual ~RPGrpModelScene(); // at 0x8

    virtual void Calc();                             // at 0xC
    virtual void CalcDrawList();                     // at 0x10
    virtual void Draw();                             // at 0x14
    virtual void DrawFinish();                       // at 0x18
    virtual void PreConditionForRenderingGX() const; // at 0x1C

    static void fn_801b23e0();
    void CalculateBackGround();

    void DrawPrepare(const RPGrpCamera* pCamera, const RPGrpScreen* pScreen);
    void ClearDrawList();
    void Append(RPGrpModel* pModel);

    /**
     * @brief Gets the allocator used for model-related allocations
     */
    static EGG::Allocator* GetAllocator() {
        return spAllocator;
    }
    /**
     * @brief Sets the allocator used for model-related allocations
     *
     * @param pAllocator New allocator
     */
    static void SetAllocator(EGG::Allocator* pAllocator) {
        spAllocator = pAllocator;
    }

    RPGrpLightManager* GetLightManager() const {
        return mpLightManager;
    }

    RPGrpFogManager* GetFogManager() const {
        return mpFogManager;
    }

    RPGrpDrawPathManager* GetDrawPathManager() const {
        return mpDrawPathManager;
    }

    EGG::ScnRootEx* GetScnRootEx() const {
        return mpScnRootEx;
    }
};

//! @}

#endif
