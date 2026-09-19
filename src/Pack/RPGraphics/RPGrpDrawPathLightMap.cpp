#include <Pack/RPGraphics.h>

#include <egg/gfxe.h>

/**
 * @brief Constructor
 *
 * @param pRenderer Scene renderer
 */
RPGrpDrawPathLightMap::RPGrpDrawPathLightMap(EGG::ScnRenderer* pRenderer)
    : RPGrpDrawPath(pRenderer) {

    mpLightTextureManager =
        pRenderer->getLightManager()->GetLightTextureManager();
}

/**
 * @brief Applies the specified lightmap texture to a model
 *
 * @param index Texture index
 * @param pModel Target model
 * @return The number of affected materials
 */
u16 RPGrpDrawPathLightMap::ReplaceModelTexture(u16 index, RPGrpModel* pModel) {
    if (pModel->GetKind() != RPGrpModel::Kind_RFL) {
        return mpLightTextureManager->replaceModelTexture(index,
                                                          pModel->GetModelEx());
    }

    RPGrpTexture tex(mpLightTextureManager->getLightTexture(index));

    return pModel->ReplaceTexture(
        mpLightTextureManager->getLightTexture(index)->getName(), tex, true);
}
