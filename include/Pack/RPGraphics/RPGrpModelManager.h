#ifndef RP_GRAPHICS_MODEL_MANAGER_H
#define RP_GRAPHICS_MODEL_MANAGER_H
#include <Pack/types_pack.h>

#include <egg/core.h>

//! @addtogroup rp_graphics
//! @{

// Forward declarations
class RPGrpDrawPathManager;
class RPGrpFogManager;
class RPGrpLightManager;
class RPGrpModelResManager;
class RPGrpModelScene;

/**
 * @brief Model manager
 */
class RPGrpModelManager {
public:
    //! Maximum number of model scenes
    static const int MAX_SCENE = 8;

protected:
    //! Model scenes
    RPGrpModelScene* mpModelScenes[MAX_SCENE]; // at 0x0
    //! Model resource manager
    RPGrpModelResManager* mpModelResManager; // at 0x20

    //! Allocator to use for model-related allocations
    EGG::Allocator* mpModelAllocator; // at 0x24
    //! Allocator to use for scene-related allocations
    EGG::Allocator* mpSceneAllocator; // at 0x28

    //! Whether to prevent updating model scenes
    bool mIsPause;

public:
    /**
     * @brief Gets the currently active instance
     */
    static RPGrpModelManager* GetCurrent() {
        return spCurrent;
    }

    /**
     * @brief Constructor
     *
     * @param pModelAllocator Allocator to use for model-related allocations
     * @param pSceneAllocator Allocator to use for scene-related allocations
     */
    RPGrpModelManager(EGG::Allocator* pModelAllocator,
                      EGG::Allocator* pSceneAllocator);

    /**
     * @brief Destructor
     */
    virtual ~RPGrpModelManager() {} // at 0x8

    /**
     * @brief Becomes the currently active instance
     */
    void BecomeCurrent();

    /**
     * @brief Clears the currently active instance
     */
    static void SetCurrentNull();

    /**
     * @brief Creates a new model scene
     *
     * @param scene Model scene ID
     * @param drawPathFlag Draw path enable flags
     * @param viewNum Number of renderer views
     * @param pLightManager Light manager
     * @param pFogManager Fog manager
     */
    void CreateModelScene(u8 scene, u8 drawPathFlag, u32 viewNum,
                          RPGrpLightManager* pLightManager,
                          RPGrpFogManager* pFogManager);

    /**
     * @brief Performs logic that must occur before the scene is updated
     */
    void PreCalc();

    /**
     * @brief Performs logic that must occur after the scene is updated
     */
    void PostCalc();

    /**
     * @brief Performs logic that must occur after the scene is updated, when
     * the game is currently paused
     */
    void PostCalcInPause();

    /**
     * @brief Updates the state of models before any rendering takes place
     */
    void CalcBackGround();

    /**
     * @brief Marks the model scenes as rendered completely
     */
    void DrawFinish();

    /**
     * @brief Releases all resources associated with this manager
     */
    void Finalize();

    /**
     * @brief Accesses the specified scene's draw path manager
     *
     * @param scene Model scene ID
     */
    RPGrpDrawPathManager* GetDrawPathManager(u8 scene) const;

    /**
     * @brief Accesses the specified scene's light manager
     *
     * @param scene Model scene ID
     */
    RPGrpLightManager* GetLightManager(u8 scene) const;

    /**
     * @brief Accesses the specified scene's fog manager
     *
     * @param scene Model scene ID
     */
    RPGrpFogManager* GetFogManager(u8 scene) const;

    /**
     * @brief Accesses the specified scene's fog manager
     *
     * @param scene Model scene ID
     */
    RPGrpModelScene* GetModelScene(u8 scene) const {
        return mpModelScenes[scene];
    }

    /**
     * @brief Toggles whether to prevent updating models
     *
     * @param pause Pause status
     */
    void SetPause(bool pause) {
        mIsPause = pause;
    }

private:
    /**
     * @brief Model miscellaneous settings
     */
    class ModelMisc : public EGG::IBinary<ModelMisc> {
    public:
        //! Version of this file's specification
        static const u8 VERSION = 0;

    public:
        /**
         * @brief Material target
         */
        struct MatTarget {
            char name[32]; // at 0x0
            bool unk20;    // at 0x20
            f32 unk24;     // at 0x24
        };

        /**
         * @brief Main binary file structure
         */
        struct BinData {
            u16 targetNum;       // at 0x10
            MatTarget targets[]; // at 0x14
        };

    public:
        /**
         * @brief Gets the version of this binary file
         */
        virtual u8 GetVersion() const override { // at 0x18
            return VERSION;
        }

        /**
         * @brief Destructor
         */
        virtual ~ModelMisc() {}

        /**
         * @brief Deserializes this object from a binary file
         *
         * @param rBinary Binary file contents
         */
        virtual void
        SetBinaryInner(const Bin& /* rBinary */) override { // at 0x8
            // Stubbed out in revision 1
        }

        /**
         * @brief Serializes this object to a binary file
         *
         * @param[out] pBinary Binary file contents
         */
        virtual void
        GetBinaryInner(Bin* /* pBinary */) const override { // at 0xC
            // Stubbed out in revision 1
        }

        /**
         * @brief Gets the binary signature of this object
         */
        virtual const char* GetBinaryType() const override; // at 0x10

        // TODO(kiwi) IBinary needs more investigation
    };

private:
    /**
     * @brief Updates the state of all models
     */
    void Calc();

private:
    //! Currently active instance
    static RPGrpModelManager* spCurrent;

    //! Miscellaneous model data
    ModelMisc* mpModelMisc; // at 0x34
};

//! @}

#endif
