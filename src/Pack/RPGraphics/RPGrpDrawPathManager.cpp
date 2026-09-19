#include <Pack/RPGraphics.h>

/**
 * @brief Creates a draw path manager instance
 *
 * @param drawPathFlag Draw path enable flags
 * @param pModelScene Model scene
 */
RPGrpDrawPathManager*
RPGrpDrawPathManager::Construct(u32 drawPathFlag,
                                RPGrpModelScene* pModelScene) {

    return new RPGrpDrawPathManager(drawPathFlag, pModelScene);
}

/**
 * @brief Creates a RPGrpDrawPathShadowTexture instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                           //
RPGrpDrawPathShadowTexture*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathShadowTexture>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathShadowTexture(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathLightMap instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                      //
RPGrpDrawPathLightMap*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathLightMap>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathLightMap(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathXluSnap instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                     //
RPGrpDrawPathXluSnap*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathXluSnap>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathXluSnap(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathBloom instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                   //
RPGrpDrawPathBloom*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathBloom>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathBloom(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathDOF instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                 //
RPGrpDrawPathDOF*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathDOF>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathDOF(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathHDR instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                 //
RPGrpDrawPathHDR*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathHDR>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathHDR(pRenderer);
}

/**
 * @brief Creates a RPGrpDrawPathSV instance
 *
 * @param pRenderer Scene renderer
 */
template <>                                //
RPGrpDrawPathSV*                           //
RPGrpDrawPath::Construct<RPGrpDrawPathSV>( //
    EGG::ScnRenderer* pRenderer) {

    return new RPGrpDrawPathSV(pRenderer);
}

// RPGrpDrawPathManager::RPGrpDrawPathManager(u32 drawPathFlag,
//                                            RPGrpModelScene* pModelScene)
//     : unkC(1),
//       mpModelScene(pModelScene),
//       unk14(0),
//       mpDrawPathLightMap(NULL),
//       mpDrawPathShadowTexture(NULL),
//       mpDrawPathXluSnap(NULL),
//       mpDrawPathSV(NULL),
//       mpDrawPathHDR(NULL),
//       mpDrawPathBloom(NULL),
//       mpDrawPathDOF(NULL) {

//     if (drawPathFlag & EFlag_DrawPathSV) {
//         mpDrawPathSV = RPGrpDrawPath::Construct<RPGrpDrawPathSV>()
//     }
// }

// void RPGrpDrawPathManager::scnProcDraw(u16 idx) {
//     ;
// }
