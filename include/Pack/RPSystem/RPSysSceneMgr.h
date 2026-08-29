#ifndef RP_SYSTEM_SCENE_MGR_H
#define RP_SYSTEM_SCENE_MGR_H
#include <Pack/types_pack.h>

#include <Pack/RPSingleton.h>
#include <Pack/RPSystem/RPSysScene.h>

#include <egg/core.h>

//! @addtogroup rp_system
//! @{

/**
 * @brief Scene manager
 */
class RPSysSceneMgr : public EGG::SceneManager {
    RP_SINGLETON_DECL(RPSysSceneMgr);

public:
    /**
     * @brief 
     * Gives system status. Indicates if an error has occurred
     */
    enum ApplicationStatus {
        NORMAL_STATUS,
        RESET_STATUS,
        UNK2_STATUS,
        MENU_RETURN_STATUS,
        SHUTTING_DOWN_STATUS
    };
    bool isShutDownReserved() const;
    bool isDvdErrorApplicationEnd() const;
    bool isNormalState();

    RPSysScene* getCurrentSceneRP() const;

    void shutdownSystem(BOOL pBlack);
    BOOL returnToMenu(BOOL pBlack);
    void softReset(BOOL pFade);

private:
    char mPlaceholder[4];
    ApplicationStatus mApplicationStatus;
    EGG::ColorFader* mColorFader;
};

//! @}

#endif
