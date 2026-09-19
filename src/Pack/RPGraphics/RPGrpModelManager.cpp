#include <Pack/RPGraphics.h>

/******************************************************************************
 *
 * RPGrpModelManager
 *
 ******************************************************************************/

/**
 * @brief Currently active instance
 */
RPGrpModelManager* RPGrpModelManager::spCurrent = NULL;

/**
 * @brief Constructor
 *
 * @param pModelAllocator Allocator to use for model-related allocations
 * @param pSceneAllocator Allocator to use for scene-related allocations
 */
RPGrpModelManager::RPGrpModelManager(EGG::Allocator* pModelAllocator,
                                     EGG::Allocator* pSceneAllocator)
    : mpModelAllocator(pModelAllocator),
      mpSceneAllocator(pSceneAllocator),
      mIsPause(false) {

    RPGrpModel::spGenList = NULL;

    mpModelResManager = new RPGrpModelResManager();
    mpModelResManager->Configure();

    for (int i = 0; i < MAX_SCENE; i++) {
        mpModelScenes[i] = NULL;
    }

    mpModelMisc = new RPGrpModelManager::ModelMisc();
}

/**
 * @brief Becomes the currently active instance
 */
void RPGrpModelManager::BecomeCurrent() {
    spCurrent = this;
    mpModelResManager->BecomeCurrent();

    RPGrpModel::SetAllocator(mpModelAllocator);
    RPGrpModel::spEntryHead = RPGrpModel::spEntryTail = NULL;

    RPGrpModelScene::SetAllocator(mpSceneAllocator);
    EGG::G3DUtility::setAllocator(mpModelAllocator);
}

/**
 * @brief Creates a new model scene
 *
 * @param scene Model scene ID
 * @param drawPathFlag Draw path enable flags
 * @param viewNum Number of renderer views
 * @param pLightManager Light manager
 * @param pFogManager Fog manager
 */
void RPGrpModelManager::CreateModelScene(u8 scene, u8 drawPathFlag, u32 viewNum,
                                         RPGrpLightManager* pLightManager,
                                         RPGrpFogManager* pFogManager) {
    mpModelScenes[scene] =
        new RPGrpModelScene(drawPathFlag, viewNum, pLightManager, pFogManager);
}

/**
 * @brief Performs logic that must occur before the scene is updated
 */
void RPGrpModelManager::PreCalc() {
    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->ClearDrawList();
        }
    }
}

/**
 * @brief Updates the state of all model scenes
 */
void RPGrpModelManager::Calc() {
    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->Calc();
        }
    }
}

/**
 * @brief Performs logic that must occur after the scene is updated
 */
void RPGrpModelManager::PostCalc() {
    if (mIsPause) {
        return;
    }

    Calc();

    if (RPGrpModel::spEntryTail != NULL) {
        RPGrpModel::spEntryTail->mpEntryNext = NULL;

        for (RPGrpModel* pIt = RPGrpModel::spEntryHead; pIt != NULL;
             pIt = pIt->mpEntryNext) {

            mpModelScenes[pIt->GetDrawScene()]->Append(pIt);
        }

        RPGrpModel::spEntryHead = RPGrpModel::spEntryTail = NULL;
    }

    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->CalcDrawList();
        }
    }
}

/**
 * @brief Performs logic that must occur after the scene is updated, when
 * the game is currently paused
 */
void RPGrpModelManager::PostCalcInPause() {
    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->GetScnRootEx()->getScnRoot()->SetScnObjOption(
                nw4r::g3d::ScnObj::OPTID_DISABLE_CALC_WORLD, true);

            mpModelScenes[i]->GetScnRootEx()->CalcWorld();

            mpModelScenes[i]->GetScnRootEx()->getScnRoot()->SetScnObjOption(
                nw4r::g3d::ScnObj::OPTID_DISABLE_CALC_WORLD, false);
        }
    }
}

/**
 * @brief Updates the state of models before any rendering takes place
 */
void RPGrpModelManager::CalcBackGround() {
    RPGrpModelScene::fn_801b23e0();

    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->CalculateBackGround();
        }
    }
}

/**
 * @brief Marks the model scenes as rendered completely
 */
void RPGrpModelManager::DrawFinish() {
    for (int i = 0; i < MAX_SCENE; i++) {
        if (mpModelScenes[i] != NULL) {
            mpModelScenes[i]->DrawFinish();
        }
    }
}

/**
 * @brief Releases all resources associated with this manager
 */
void RPGrpModelManager::Finalize() {
    mpModelResManager->TerminateAll();

    if (GetCurrent() == this) {
        SetCurrentNull();
    }
}

/**
 * @brief Clears the currently active instance
 */
void RPGrpModelManager::SetCurrentNull() {
    RPGrpModel::SetAllocator(NULL);
    RPGrpModelScene::SetAllocator(NULL);
    RPGrpModelResManager::SetCurrentNull();
    spCurrent = NULL;
}

/**
 * @brief Accesses the specified scene's draw path manager
 *
 * @param scene Model scene ID
 */
RPGrpDrawPathManager* RPGrpModelManager::GetDrawPathManager(u8 scene) const {
// @bug Model scene is not validated
#if defined(BUG_FIX)
    if (mpModelScenes[scene] == NULL) {
        return NULL;
    }
#endif

    return mpModelScenes[scene]->GetDrawPathManager();
}

/**
 * @brief Accesses the specified scene's light manager
 *
 * @param scene Model scene ID
 */
RPGrpLightManager* RPGrpModelManager::GetLightManager(u8 scene) const {
// @bug Model scene is not validated
#if defined(BUG_FIX)
    if (mpModelScenes[scene] == NULL) {
        return NULL;
    }
#endif

    return mpModelScenes[scene]->GetLightManager();
}

/**
 * @brief Accesses the specified scene's fog manager
 *
 * @param scene Model scene ID
 */
RPGrpFogManager* RPGrpModelManager::GetFogManager(u8 scene) const {
// @bug Model scene is not validated
#if defined(BUG_FIX)
    if (mpModelScenes[scene] == NULL) {
        return NULL;
    }
#endif

    return mpModelScenes[scene]->GetFogManager();
}

/******************************************************************************
 *
 * ModelMisc
 *
 ******************************************************************************/

/**
 * @brief ModelMisc binary file extension
 */
template <>
const char* EGG::IBinary<RPGrpModelManager::ModelMisc>::spExtension = "pmmisc";

/**
 * @brief Gets the binary signature of this object
 */
const char* RPGrpModelManager::ModelMisc::GetBinaryType() const {
    return "MMSC";
}
