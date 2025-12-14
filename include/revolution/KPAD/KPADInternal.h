#ifndef RVL_SDK_KPAD_INTERNAL_H
#define RVL_SDK_KPAD_INTERNAL_H
#include <types.h>

#include <revolution/KPAD/KPAD.h>
#include <revolution/MTX.h>
#include <revolution/WPAD.h>
#ifdef __cplusplus
extern "C" {
#endif

#define KPAD_MAX_DPD_OBJECTS 4

typedef struct kobj {
    Vec2 pos;      // at 0x0
    char flags;    // at 0x8
    char inactive; // at 0x9
} kobj;

typedef struct KPADUnifiedWpadStatus {
    union {
        WPADStatus core; // at 0x2a
        WPADFSStatus fs; // at 0x32
        WPADCLStatus cl; // at 0x36
        // WPADTRStatus tr; // at 0x2e
        // WPADBLStatus bl; // at 0x34
        // WPADMPStatus mp; // at 0x3e
        // WPADBKStatus bk; // at 0x40
    } u;    // at 0x0
    u8 fmt; // at 0x40
    u8 padding;
} KPADUnifiedWpadStatus; // size 0x42

typedef struct KPADCB {
    KPADStatus status;                // at 0x000
    Vec2 posParam;                    // at 0x0f0
    Vec2 horiParam;                   // at 0x0f8
    Vec2 distParam;                   // at 0x100
    Vec2 accParam;                    // at 0x108
    f32 idist;                        // at 0x110
    Vec2 iaccXY_nrm_hori;             // at 0x114
    Vec2 isec_nrm_hori;               // at 0x11c
    Vec2 sensorPos;                   // at 0x124
    f32 dpd2pos_scale;                // at 0x12c
    kobj kobjs[KPAD_MAX_DPD_OBJECTS]; // at 0x130
    kobj selected[2];                 // at 0x160
    s16 at_0x178;                     // at 0x178
    u8 localSamplingBufIndex;         // at 0x17a
    u8 at_0x17b;                      // at 0x17b
    KPADStatus* appSamplingBufPtr;    // at 0x17c /* name known from asserts */
    KPADUnifiedWpadStatus localSamplingBuf[16]; // at 0x180
    KPADUnifiedWpadStatus* appSamplingBuf;      // at 0x5a0
    u32 appSamplingBufIndex;                    // at 0x5a4
    f32 at_0x5a8;                               // at 0x5a8
    Vec2 at_0x5ac;                              // at 0x5ac
    f32 at_0x5b4;                               // at 0x5b4
    f32 at_0x5b8;                               // at 0x5b8
    Vec acc;                                    // at 0x5bc
    Vec2 horizon;                               // at 0x5c8
    Vec2 at_0x5d0;                              // at 0x5d0
    Vec2 pos;                                   // at 0x5d8
    Vec2 at_0x5e0;                              // at 0x5e0
    u16 ah_circle_ct;                           // at 0x5e8
    u8 at_0x5ea;                                // at 0x5ea
    u8 currentlyReading;                        // at 0x5eb
    u16 at_0x5ec;                               // at 0x5ec
    u16 at_0x5ee;                               // at 0x5ee
    u16 at_0x5f0;                               // at 0x5f0
    u16 at_0x5f2;                               // at 0x5f2
    u16 at_0x5f4;                               // at 0x5f4
    u16 at_0x5f6;                               // at 0x5f6
    WPADCallback* controlDpdCb;                 // at 0x5f8
    Vec coreGravityUnit;                        // at 0x5fc
    Vec fsGravityUnit;                          // at 0x608
    f32 frameBorderLeft;                        // at 0x614
    f32 frameBorderTop;                         // at 0x618
    f32 frameBorderRight;                       // at 0x61c
    f32 frameBorderBottom;                      // at 0x620
    f32 err_dist_speed_max;                     // at 0x624
    f32 err_dist_speed_min;                     // at 0x628
    f32 ah_circle_r2;                           // at 0x62c
    f32 dist_vv1;                               // at 0x630
    f32 err_dist_min;                           // at 0x634
    WPADSamplingCallback samplingCb;            // at 0x638
    WPADConnectCallback connectCb;              // at 0x63c
    u8 needsReset;                              // at 0x640
    u8 isNewDevType;                            // at 0x641
    u8 dpdEnabled;                              // at 0x642
    u8 wpadDpdEnabled;                          // at 0x643
    u8 controllingDpd;                          // at 0x644
    u8 wpadDpdCmd;                              // at 0x645
    u8 at_0x646;                                // at 0x646
    u8 at_0x647;                                // at 0x647
    u8 aimingModeChanged;                       // at 0x648
    u8 aimingModeEnabled;                       // at 0x649
    u8 reviseEnabled;                           // at 0x64a
    u8 buttonProcMode;                          // at 0x64b
    BOOL posPlayMode;                           // at 0x64c
    BOOL horiPlayMode;                          // at 0x650
    BOOL distPlayMode;                          // at 0x654
    BOOL accPlayMode;                           // at 0x658
    WPADDeviceType devType;                     // at 0x65c
    u32 tickQueue[5];                           // at 0x660
    u8 at_0x674;                                // at 0x674
    u8 at_0x675;                                // at 0x675
    u8 mplsDevMode1;                            // at 0x676
    u8 activeMplsCmd;                           // at 0x677
    u8 mplsDevMode3;                            // at 0x678
    u8 pendingMplsCmd;                          // at 0x679
    u8 mplsWasSampled;                          // at 0x67a
    u8 at_0x67b;                                // at 0x67b
    u8 at_0x67c;                                // at 0x67c
    u8 at_0x67d;                                // at 0x67d
    u8 needsNewGravityUnit;                     // at 0x67e
    KPADCallback controlMplsCb;                 // at 0x680
} KPADCB;

#ifdef __cplusplus
}
#endif
#endif
