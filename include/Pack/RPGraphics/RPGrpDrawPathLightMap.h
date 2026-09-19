#ifndef RP_GRAPHICS_DRAW_PATH_LIGHT_MAP_H
#define RP_GRAPHICS_DRAW_PATH_LIGHT_MAP_H
#include <Pack/types_pack.h>

#include <Pack/RPGraphics/RPGrpDrawPath.h>

#include <egg/gfxe.h>

//! @addtogroup rp_graphics
//! @{

// Forward declarations
class RPGrpModel;

/**
 * @brief Light map draw path
 */
class RPGrpDrawPathLightMap : public RPGrpDrawPath {
public:
    /**
     * @brief Constructor
     *
     * @param pRenderer Scene renderer
     */
    explicit RPGrpDrawPathLightMap(EGG::ScnRenderer* pRenderer);

    /**
     * @brief Enables this draw path
     */
    virtual void On() override { // at 0xC
        mpLightTextureManager->setEnable(true);
    }

    /**
     * @brief Disables this draw path
     */
    virtual void Off() override { // at 0x10
        mpLightTextureManager->setEnable(false);
    }

    /**
     * @brief Tests whether this draw path is enabled
     */
    virtual bool IsEnable() const override { // at 0x10
        return mpLightTextureManager->isEnable();
    }

    /**
     * @brief Applies the specified lightmap texture to a model
     *
     * @param index Lightmap texture index
     * @param pModel Target model
     * @return The number of affected materials
     */
    u16 ReplaceModelTexture(u16 index, RPGrpModel* pModel);

    /**
     * @brief Applies the specified lightmap texture to a model
     *
     * @param pName Lightmap texture name
     * @param pModel Target model
     * @return The number of affected materials
     */
    u16 ReplaceModelTexture(const char* pName, RPGrpModel* pModel) {
        return ReplaceModelTexture(GetTextureIndex(pName), pModel);
    }

    /**
     * @brief Gets the index of the specified lightmap texture
     *
     * @param pName Texture name
     * @return Texture index, or -1 if not found
     */
    int GetTextureIndex(const char* pName) const {
        return mpLightTextureManager->getTextureIndex(pName);
    }

    /**
     * @brief Creates a new lightmap texture
     *
     * @param pName Texture name
     * @return Texture index
     */
    u16 CreateTexture(const char* pName) const {
        return mpLightTextureManager->createTexture(pName);
    }

private:
    //! Light texture manager
    EGG::LightTextureManager* mpLightTextureManager; // at 0xC
};

//! @}

#endif
