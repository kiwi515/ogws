#ifndef RP_AUDIO_SND_STATIC_MGR_H
#define RP_AUDIO_SND_STATIC_MGR_H
#include <Pack/types_pack.h>

#include <egg/audio.h>

#include <revolution/WPAD.h>

//! @addtogroup rp_audio
//! @{

/**
 * @brief Static-lifetime sound archive manager
 */
class RPSndStaticMgr : public EGG::ArcPlayer {
public:
    /**
     * @brief Constructor
     */
    RPSndStaticMgr();

    /**
     * @brief Destructor
     */
    virtual ~RPSndStaticMgr(); // at 0x8

    /**
     * @brief Updates the state of the sound player
     */
    virtual void calc(); // at 0x34

    /**
     * @brief Mounts the static sound archive
     *
     * @return Success
     */
    bool setupArchive();

    void startSe(u32 id, s32 player);

private:
    struct Info {
        u8 unk0;
        u16 unk2;
        u16 unk4;
        u32 unk8;
        u32 unkC;
        u32 unk10;
    };

private:
    //! Active sound handle
    nw4r::snd::SoundHandle mSoundHandle; // at 0x5B4

    Info mInfo[WPAD_MAX_CONTROLLERS]; // at 0x5B8

    //! Static sound archive asset
    static u8 sStaticSoundArchive[];
};

//! @}

#endif
