#include <Pack/RPAudio.h>
#include <Pack/RPKernel.h>
#include <Pack/RPSystem.h>

#include <homebuttonMiniLib.h>

#include <cstring>

RP_SINGLETON_IMPL_EX(RPSysHomeMenuMgr);

/**
 * @brief Destructor
 */
RPSysHomeMenuMgr::~RPSysHomeMenuMgr() {}

/**
 * @brief Initializes the class.
 */
void RPSysHomeMenuMgr::init() {
    fileAccessor* arcStruct;

    mUNK_0x09 = FALSE;
    mIsOpen = FALSE;
    mUNK_0x0C = FALSE;
    mBlackOutCalled = FALSE;
    mButtonState = BUTTON_NONE;
    mUNK_0x14 = NULL;
    VISetBlack(FALSE);
    mUNK_0x09 = FALSE; // @bug Initialized twice
    arcStruct = mFileAccessor;
    arcStruct->UNK_0x04 = 0;
    arcStruct->UNK_0x08 = 0;
    arcStruct->UNK_0x0A = 0;
}

/**
 * @brief Loads the files used in the home menu itself.
 */
void RPSysHomeMenuMgr::LoadResource() {
    HBMDataInfo* menuDataInfo = (HBMDataInfo *)&mMenuDataInfo;
    EGG::Archive* staComArc = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetStaticCommonArchive();
    EGG::Archive* staLocArc = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetStaticLocalArchive();
    mFileAccessor->file = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetFileFromArchive(staComArc, "/HomeMenu/homeBtnIcon.bti");

    switch (mProjectLocal->getLanguage()) {
        case RPSysProjectLocal::EArea_France: {
            menuDataInfo->region = SC_LANG_FR;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_FRA.arc");
            break;
        }
        case RPSysProjectLocal::EArea_Germany: {
            menuDataInfo->region = SC_LANG_DE;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_GER.arc");
            break;
        }
        case RPSysProjectLocal::EArea_Italy: {
            menuDataInfo->region = SC_LANG_IT;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_ITA.arc");
            break;
        }
        case RPSysProjectLocal::EArea_Spain: {
            menuDataInfo->region = SC_LANG_SP;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_SPA.arc");
            break;
        }
        case RPSysProjectLocal::EArea_Netherlands: {
            menuDataInfo->region = SC_LANG_NL;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_NED.arc");
            break;
        }
        case RPSysProjectLocal::EArea_Japan: {
            menuDataInfo->region = SC_LANG_JP;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn.arc");
            break;
        }
        default: {
            menuDataInfo->region = SC_LANG_EN;
            menuDataInfo->layoutBuf = RP_GET_INSTANCE(RPSysResourceManager)
            ->GetFileFromArchive(staLocArc, "/HomeMenu/homeBtn_ENG.arc");
            break;
        }
    }
    menuDataInfo->spkSeBuf = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetFileFromArchive(staComArc, "/HomeMenu/SpeakerSe.arc");

    menuDataInfo->msgBuf = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetFileFromArchive(staComArc, "/HomeMenu/home_nosave.csv");

    menuDataInfo->configBuf = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetFileFromArchive(staComArc, "/HomeMenu/config.txt");

    HBMCreate(menuDataInfo);
    HBMSetAdjustFlag(TRUE);

    void *seFile = RP_GET_INSTANCE(RPSysResourceManager)
    ->GetFileFromArchive(staComArc, "/HomeMenu/HomeButtonSe.brsar");
    spHomeMenuArcMgr->setupArchive(seFile);

    if (mProjectLocal->getPack() == RPSysSceneCreator::EPackID_HealthPack) {
        HBMSetBlackOutColor(0xFF, 0xFF, 0xFF);
    }
    mResLoaded = TRUE;
}

/**
 * @brief Runs every frame when the user is not in the home menu.
 */
void RPSysHomeMenuMgr::updateOutside() {
    BOOL unk = FALSE;
    fileAccessor* arcStruct;

    for (int index = 0; index < 4; index++) {
        if ((RP_GET_CORE_CTRL(index)->getCoreStatus()->getTrigger() & EGG::cCORE_BUTTON_HOME)) {
            unk = TRUE;
            break;
        }
    }
    
    if (unk || mUNK_0x0A) {
        if (RP_GET_INSTANCE(RPSysSceneMgr)->getCurrentSceneRP()->isSceneChangeEnable()) {
            if (!(mUNK_0x09 || RP_GET_INSTANCE(RPSysDvdStatus)->isErrorOccured())) {
                mButtonState = BUTTON_OPEN;
                mUNK_0x14 = 0;
                mIsOpen = TRUE;
                mUNK_0x0C = FALSE;
                RP_GET_INSTANCE(RPSndAudioMgr)->enterMenu();
            } else {
                arcStruct = mFileAccessor;
                arcStruct->UNK_0x04 = 1;
                arcStruct->UNK_0x08 = 0;
                arcStruct->UNK_0x0A = 0;
            }
            mUNK_0x0A = FALSE;
        } else if (RP_GET_INSTANCE(RPSysDvdStatus)->isErrorOccured()) {
            arcStruct = mFileAccessor;
            arcStruct->UNK_0x04 = 1;
            arcStruct->UNK_0x08 = 0;
            arcStruct->UNK_0x0A = 0;
        } else {
            mUNK_0x0A = TRUE;
        }
    }
}

void RPSysHomeMenuMgr::clearMenu() {
    RPSysCoreController* con;

    mUNK_0x0C = TRUE;
    switch (HBMCalc(mHbmControllerData)) {
        //! Reset (yes, the code checks this case first)
        case (HBM_SELECT_BTN2): {
            mButtonState = BUTTON_RESET;
            RP_GET_INSTANCE(RPSysSceneMgr)->softReset(TRUE);
            RP_GET_INSTANCE(RPSndAudioMgr)->stopAllSoundOnPauseOff();
            break;
        }
        //! Return to Wii Menu
        case (HBM_SELECT_BTN1): {
            RP_GET_INSTANCE(RPSysSceneMgr)->returnToMenu(TRUE);
            mButtonState = BUTTON_NONE;
            mIsOpen = FALSE;
            mUNK_0x0C = FALSE;
            RP_GET_INSTANCE(RPSndAudioMgr)->exitMenu();
            con->popDpdCtrlStackAll();
            con->popKPADParamStackAll();
            if (RP_GET_INSTANCE(RPSysPauseMgr)->isPause()) {
                return;
            }
            break;
        }
        case (HBM_SELECT_BTN3): {
            return;
        }
        default: {
            break;
        }
    }
    RPSysScene* sceneRP = RP_GET_INSTANCE(RPSysSceneMgr)->getCurrentSceneRP();
    //! RPSysSceneMgr enables overriding pauseCallBack, but RPSysScene leaves it stubbed
    sceneRP->pauseCallBack(FALSE);
}

/**
 * @brief Makes the screen fade out.
 * 
 * @return Home menu status.
 */
BOOL RPSysHomeMenuMgr::startBlackOut() {
    BOOL openState;

    if (mIsOpen && !mBlackOutCalled) {
        HBMStartBlackOut();
        mBlackOutCalled = TRUE;
    }
    openState = mIsOpen;
    mUNK_0x0A = FALSE; //todo(texline) what does this indicate?
    return openState;
}

void RPSysHomeMenuMgr::update() {
    s32 conChan;
    RPSysCoreController *con;
    KPADStatus* kpadStatPtr;
    //! test
    f32 current = RPGrpScreen::GetSizeXMax();
    f32 standard = RPGrpScreen::GetSizeYMax(RPGrpScreen::TV_MODE_STD);
    mScaleX = current / standard;
    mAdjScaleX = 1.0f;

    if (mIsOpen) {
        kpadStatPtr = &mKpadStatus;
        conChan = 0;
        while (conChan < 4) {
            con = RP_GET_INSTANCE(RPSysCoreControllerMgr)->findController(conChan);
            if (con && con->isCoreBaseDevice()) {
                if (mKpadStatus.wpad_err == WPAD_ERR_COMMUNICATION_ERROR) {
                    std::memset(kpadStatPtr, 0, sizeof(KPADStatus));
                    mKpadStatus.horizon = con->getCoreStatus()->horizon;
                } else {
                    mKpadStatus = *con->getCoreStatus();
                }
                mVec2 = mKpadStatus.pos;
            } else {
                mHbmControllerData = NULL;
                mVec2.x = 10000.0f;
                mVec2.y = 10000.0f;
            }
            conChan++;
            kpadStatPtr++;
        }
    }
    if (mResLoaded) {
        switch (mButtonState) {
            /* Commenting out: code right now has severe bug that leads to 0% match
            case BUTTON_OPEN: {
                mUNK_0x14++;
                if (RP_GET_INSTANCE(RPSndSpeakerMgr)
                ->isDisconnectAllFinished()) {
                    mButtonState = BUTTON_CLOSE;
                    mUNK_0x14 = 0;
                    HBMInit();
                    con->stopMotorAll();
                    con->pushDpdCtrlStackAll(TRUE);
                }
            }
                */
            case BUTTON_CLOSE: {
                clearMenu();
            }
            case BUTTON_RESET: {
                mButtonState = BUTTON_NONE;
                mIsOpen = FALSE;
                mUNK_0x0C = FALSE;
                RP_GET_INSTANCE(RPSndAudioMgr)->exitMenu();
                con->popDpdCtrlStackAll();
                con->popKPADParamStackAll();
                if (RP_GET_INSTANCE(RPSysPauseMgr)->isPause()) {
                    RPSysScene* sceneRP = RP_GET_INSTANCE(RPSysSceneMgr)
                    ->getCurrentSceneRP();
                    //! This function is stubbed out in rev 1
                    sceneRP->pauseCallBack(FALSE);
                }
            }
            default: {
                updateOutside();
            }
        }
    }
    spHomeMenuArcMgr->calc();
}

/**
 * @brief Starts the drawing process for the home menu.
 */
void RPSysHomeMenuMgr::draw() {
    if (mResLoaded && mIsOpen && mUNK_0x0C) {
        HBMDraw();
    }
}

void RPSysHomeMenuMgr::beginDrawScreen() {
    if (mResLoaded) {
        if (mFileAccessor->UNK_0x04) {
            mFileAccessor->drawScreen();
        }
    }
}
