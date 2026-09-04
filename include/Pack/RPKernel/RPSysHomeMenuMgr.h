#ifndef RP_KERNEL_HOME_MENU_MGR_H
#define RP_KERNEL_HOME_MENU_MGR_H
#include <Pack/types_pack.h>

#include <Pack/RPAudio.h>
#include <Pack/RPSingleton.h>
#include <Pack/RPSystem/RPSysProjectLocal.h>

#include <homebuttonMiniLib.h>

//! @addtogroup rp_kernel
//! @{

/**
 * @brief Home menu manager
 */
class RPSysHomeMenuMgr {
    RP_SINGLETON_DECL_EX(RPSysHomeMenuMgr);

public:
    //! This uses its own scheme instead of HBMSelectBtnNum for some reason
    enum homeButtonState {
        BUTTON_NONE, // used when inactive or returning to Wii Menu
        BUTTON_OPEN,
        BUTTON_CLOSE, // exiting Home Menu, but game still running
        BUTTON_RESET,
        BUTTON_MAX
    };

    struct fileAccessor {
        void* file;
        BOOL UNK_0x04; // set to 1 if DVD error occurs in function 801A4E8C
        u16 UNK_0x08;
        u16 UNK_0x0A;
        void drawScreen();
    };

    bool soundCallBack(int unk, u32 id);
    void init();
    void LoadResource();
    void updateOutside();
    void clearMenu();
    BOOL startBlackOut();
    void update();
    void draw();
    void beginDrawScreen();

    bool isOpen() const {
        return mIsOpen;
    }

private:

    bool mResLoaded; // at 0x08
    bool mUNK_0x09;
    bool mUNK_0x0A;
    bool mIsOpen; // at 0x0B
    u8 mUNK_0x0C;
    bool mBlackOutCalled; // at 0x0D
    homeButtonState mButtonState; // at 0x10
    u16 mUNK_0x14;
    RPSysProjectLocal* mProjectLocal; // at 0x18
    fileAccessor* mFileAccessor; // at 0x1C
    HBMDataInfo* mMenuDataInfo; // at 0x20
    u32 mUNK_0x24;
    u32 mUNK_0x28;
    u32 mUNK_0x2C;
    void* mUNK_0x30;
    void* mSoundCallback; // at 0x34
    u32 mUNK_0x38;
    u32 mUNK_0x3C;
    u32 mUNK_0x40;
    u32 mUNK_0x44; // Seemingly skipped in constructor?
    u32 mUNK_0x48;
    u32 mUNK_0x4C;
    f32 mUNK_0x50; // Set to 1.2 if the console is in PAL 50 Hz mode,
                   // otherwise 1.0
    f32 mScaleX;
    f32 mAdjScaleX;
    u32 mUNK_0x5C;
    const HBMControllerData* mHbmControllerData;
    Vec2 mVec2;
    u8 mUNK_0x6C[50];
    KPADStatus mKpadStatus; //todo(texline) why is this duped?
    u8 mPadding[396];

    static RPSndHomeMenuArcMgr* spHomeMenuArcMgr;
};

//! @}

#endif
