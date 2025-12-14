#include <revolution/KPAD.h>
#include <revolution/WPAD.h>
#include <revolution/version.h>

#include <math.h>

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#define static
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

RVL_LIB_VERSION(KPAD, "Jun  5 2007", "11:27:45", "0x4199_60831");

// .bss
static Vec Vec_0; // Literally how did this get emitted
KPADCB inside_kpads[WPAD_MAX_CONTROLLERS];
static Mtx kp_fs_rot;
static f64 kp_wbc_weight_ave[4];
static f64 kp_wbc_ave_sample[4];
// static KPADConfig kp_config[KPAD_MAX_CONTROLLERS];

// .sdata
static f32 idist_org = 1.0f;
static Vec2 iaccXY_nrm_hori = {0.0f, -1.0f};
static Vec2 isec_nrm_hori = {1.0f, 0.0f};

f32 kp_obj_interval = 0.2f;
f32 kp_acc_horizon_pw = 0.05f;

f32 kp_ah_circle_radius = 0.07f;
f32 kp_ah_circle_pw = 0.06f;
u16 kp_ah_circle_ct = 100;

f32 kp_err_outside_frame = 0.05f;
/* f32 kp_err_dist_min = 0.0f; */ // see .sbss
f32 kp_err_dist_max = 3.0f;
f32 kp_err_dist_speed = 0.04f;

f32 kp_err_first_inpr = 0.9f;
f32 kp_err_next_inpr = 0.9f;
f32 kp_err_acc_inpr = 0.9f;
f32 kp_err_up_inpr = 0.7f;
f32 kp_err_near_pos = 0.1f;

static u32 kp_fs_fstick_min = 15;
static u32 kp_fs_fstick_max = 71;

static u32 kp_cl_stick_min = 60;
static u32 kp_cl_stick_max = 308;

static u32 kp_cl_trigger_min = 30;
static u32 kp_cl_trigger_max = 180;

static f32 kp_rm_acc_max = 3.4f;
static f32 kp_fs_acc_max = 2.1f;

static u32 kp_ex_trigger_max = 256;
static u32 kp_ex_analog_max = 1024;

static f32 kp_wbc_ave_count = 400.0f;
static u8 kp_wbc_calib_count = 200;
static f32 kp_fs_revise_deg = 24.0f;

// .sbss
static f32 kp_err_dist_min; // see above
static f32 kp_dist_vv1;
static u8 kp_wbc_issued;
// static WBCEnableState kp_wbc_enabled;
static s8 kp_wbc_tgc_weight_err;
static s16 kp_wbc_tgc_weight_wait;
static u8 kp_wbc_tgc_weight_done;
static u8 kp_wbc_zero_point_wait;
static s8 kp_wbc_zero_point_done;
static u8 kp_wbc_failure_count;
static u16 kp_wbc_ave_sample_count;
static f64 kp_wbc_tgc_weight;
static f64 kp_wbc_min_weight;
static f64 kp_wbc_max_weight;
static Vec2 Vec2_0;
static u8 kp_initialized;
static s32 kp_ex_analog_min;
static s32 kp_ex_trigger_min;
BOOL kp_stick_clamp_cross;
static Vec2 icenter_org;

void KPADSetBtnRepeat(s32 chan, f32 arg1, f32 arg2) {
    KPADCB* p = &inside_kpads[chan];

    if (arg2 /* != 0.0f */) {
        p->at_0x5f0 = (int)(arg1 * 200.0f + 0.5f);
        p->at_0x5f2 = (int)(arg2 * 200.0f + 0.5f);
    } else {
        p->at_0x5f0 = 40000;
        p->at_0x5f2 = 0;
    }

    p->at_0x5ec = 0;
    p->at_0x5ee = p->at_0x5f0;

    p->at_0x5f4 = 0;
    p->at_0x5f6 = p->at_0x5f0;
}

void KPADSetPosParam(s32 chan, f32 playRadius, f32 sensitivity) {
    inside_kpads[chan].posParam.x = playRadius;
    inside_kpads[chan].posParam.y = sensitivity;
}

void KPADSetHoriParam(s32 chan, f32 playRadius, f32 sensitivity) {
    inside_kpads[chan].horiParam.x = playRadius;
    inside_kpads[chan].horiParam.y = sensitivity;
}

void KPADSetDistParam(s32 chan, f32 playRadius, f32 sensitivity) {
    inside_kpads[chan].distParam.x = playRadius;
    inside_kpads[chan].distParam.y = sensitivity;
}

void KPADSetAccParam(s32 chan, f32 playRadius, f32 sensitivity) {
    inside_kpads[chan].accParam.x = playRadius;
    inside_kpads[chan].accParam.y = sensitivity;
}

static void calc_dpd2pos_scale(KPADCB* p) {
    f32 x = 1.0f;
    f32 y = 0.75f;
    f32 hypot = sqrtf(x * x + y * y);

    if (p->sensorPos.x < 0.0f) {
        x += p->sensorPos.x;
    } else {
        x -= p->sensorPos.x;
    }

    if (p->sensorPos.y < 0.0f) {
        y += p->sensorPos.y;
    } else {
        y -= p->sensorPos.y;
    }

    p->dpd2pos_scale = hypot / MIN(x, y);
}

static void reset_kpad(s32 chan) {
    KPADCB* p;
    kobj* pObj;
    KPADStatus* pStatus;
    KPADEXStatus* pEXStatus;

    p = &inside_kpads[chan];
    pStatus = &p->status;
    pEXStatus = &p->status.ex_status;

    p->needsReset = FALSE;

    p->frameBorderLeft = -1.00f + kp_err_outside_frame;
    p->frameBorderRight = 1.00f - kp_err_outside_frame;

    p->frameBorderTop = -0.75f + kp_err_outside_frame;
    p->frameBorderBottom = 0.75f - kp_err_outside_frame;

    p->err_dist_speed_max = 1.00f / kp_err_dist_speed;
    p->err_dist_speed_min = -1.00f / kp_err_dist_speed;

    p->ah_circle_r2 = kp_ah_circle_radius * kp_ah_circle_radius;
    p->err_dist_min = kp_err_dist_min;
    p->dist_vv1 = kp_dist_vv1;

    pStatus->hold = pStatus->trig = pStatus->release = 0;

    p->at_0x5ec = 0;
    p->at_0x5ee = p->at_0x5f0;

    pStatus->dpd_valid_fg = 0;
    p->at_0x5ea = 0;

    pStatus->pos = pStatus->vec = Vec2_0;
    pStatus->speed = 0.0f;

    pStatus->horizon.x = p->at_0x5d0.x = p->horizon.x = 1.0f;
    pStatus->horizon.y = p->at_0x5d0.y = p->horizon.y = 0.0f;
    pStatus->hori_vec = Vec2_0;
    pStatus->hori_speed = 0.0f;

    pStatus->acc_vertical.x = 1.0f;
    pStatus->acc_vertical.y = 0.0f;
    pStatus->dist = p->idist;
    pStatus->dist_vec = pStatus->dist_speed = 0.0f;

    p->at_0x5b4 = pStatus->dist;
    p->at_0x5a8 = p->at_0x5b8 = p->dist_vv1 / p->at_0x5b4;
    p->at_0x5ac = p->isec_nrm_hori;

    pStatus->acc.x = pStatus->acc.z = 0.0f;
    pStatus->acc.y = -1.0f;
    pStatus->acc_value = 1.0f;
    pStatus->acc_speed = 0.0f;

    p->acc = pStatus->acc;

    p->at_0x5e0 = p->at_0x5d0;
    p->ah_circle_ct = kp_ah_circle_ct;
    p->at_0x178 = 0;

    pObj = p->kobjs + ARRAY_SIZE(p->kobjs) - 1;
    do {
        pObj->flags = -1;
    } while (--pObj >= p->kobjs);

    pObj = p->selected + ARRAY_SIZE(p->selected) - 1;
    do {
        pObj->flags = -1;
    } while (--pObj >= p->selected);

    p->at_0x17b = 0;
    p->isNewDevType = TRUE;
}

void KPADSetSensorHeight(s32 chan, f32 sensorHeight) {
    KPADCB* p = &inside_kpads[chan];

    p->sensorPos.x = 0.0f;
    p->sensorPos.y = -sensorHeight;

    calc_dpd2pos_scale(p);
}

static void calc_button_repeat(KPADCB* p, u32 devType, s32 ms) {
    KPADStatus* pStatus = &p->status;
    KPADEXStatus* pEXStatus = &p->status.ex_status;

    if (pStatus->trig != 0 || pStatus->release != 0) {
        p->at_0x5ec = 0;
        p->at_0x5ee = p->at_0x5f0;

        if (pStatus->trig != 0 && p->at_0x5f2 != 0) {
            pStatus->hold |= 1 << 31; // ?
        }
    } else if (pStatus->hold != 0) {
        p->at_0x5ec += ms;

        if (p->at_0x5ec >= 40000) {
            p->at_0x5ec -= 40000;
        }

        if (p->at_0x5ec >= p->at_0x5ee) {
            pStatus->hold |= 1 << 31;

            p->at_0x5ee += p->at_0x5f2;

            if (p->at_0x5ec >= 20000) {
                p->at_0x5ec -= 20000;
                p->at_0x5ee -= 20000;
            }
        }
    }

    if (devType == WPAD_DEV_CLASSIC) {
        if (pEXStatus->cl.trig != 0 || pEXStatus->cl.release != 0) {
            p->at_0x5f4 = 0;
            p->at_0x5f6 = p->at_0x5f0;

            if (pEXStatus->cl.trig != 0 && p->at_0x5f2 != 0) {
                pEXStatus->cl.hold |= 1 << 31;
            }
        } else if (pEXStatus->cl.hold != 0) {
            p->at_0x5f4 += ms;

            if (p->at_0x5f4 >= 40000) {
                p->at_0x5f4 -= 40000;
            }

            if (p->at_0x5f4 >= p->at_0x5f6) {
                pEXStatus->cl.hold |= 1 << 31;

                p->at_0x5f6 += p->at_0x5f2;

                if (p->at_0x5f4 >= 20000) {
                    p->at_0x5f4 -= 20000;
                    p->at_0x5f6 -= 20000;
                }
            }
        }
    }
}

static void read_kpad_button(KPADCB* p, u32 devType, s32 param_3,
                             u32 coreButton, u32 fsButton, u32 clButton) {
    u32 lastHold, newHold;
    u32 extButton, extLastHold, extNewHold;

    KPADStatus* pStatus = &p->status;
    KPADEXStatus* pEXStatus = &p->status.ex_status;

    lastHold = pStatus->hold & 0xFFFF;
    pStatus->hold = coreButton & 0x9FFF;

    // if (devType == WPAD_DEV_FS || devType == WPAD_DEV_MPLS_PT_FS) {
    //     if (p->isNewDevType)
    //         c = WPAD_BUTTON_NONE;
    //     else
    //         c = fsButton;

    //     pStatus->hold |= c & WPAD_BUTTON_FS_ALL;
    // }

    newHold = pStatus->hold ^ lastHold;
    pStatus->trig = newHold & pStatus->hold;
    pStatus->release = newHold & lastHold;

    if (devType == WPAD_DEV_CLASSIC) {
        if (p->isNewDevType) {
            extButton = 0;
        } else {
            extButton = clButton;
        }

        extLastHold = pEXStatus->cl.hold & 0xFFFF;
        pEXStatus->cl.hold = extButton & 0xFFFF;

        extNewHold = pEXStatus->cl.hold ^ extLastHold;
        pEXStatus->cl.trig = extNewHold & pEXStatus->cl.hold;
        pEXStatus->cl.release = extNewHold & extLastHold;
    }

    calc_button_repeat(p, devType, param_3);
}

static void calc_acc(KPADCB* p, f32* pAcc, f32 param_3) {
    f32 a = param_3 - *pAcc;
    f32 b;

    if (!p->accPlayMode) {
        if (a < 0.0f) {
            b = -a;
        } else {
            b = a;
        }

        if (b >= p->accParam.x) {
            b = 1.0f;
        } else {
            b /= p->accParam.x;
            b *= b;
            b *= b;
        }

        b *= p->accParam.y;
        *pAcc += b * a;
    } else if (a < -p->accParam.x) {
        *pAcc += p->accParam.y * (a + p->accParam.x);
    } else if (a > p->accParam.x) {
        *pAcc += p->accParam.y * (a - p->accParam.x);
    }
}

static void calc_acc_horizon(KPADCB* p) {
    f32 a, b, c, d, e;

    a = sqrtf(p->acc.x * p->acc.x + p->acc.y * p->acc.y);

    if (a == 0.0f || a >= 2.0f) {
        return;
    }

    b = p->acc.x / a;
    c = p->acc.y / a;

    if (a > 1.0f) {
        a = 2.0f - a;
    }

    a *= a * kp_acc_horizon_pw;

    d = p->iaccXY_nrm_hori.x * b + p->iaccXY_nrm_hori.y * c;
    e = p->iaccXY_nrm_hori.y * b - p->iaccXY_nrm_hori.x * c;

    b = p->at_0x5d0.x + a * (d - p->at_0x5d0.x);
    c = p->at_0x5d0.y + a * (e - p->at_0x5d0.y);

    a = sqrtf(b * b + c * c);

    if (a == 0.0f) {
        return;
    }

    p->at_0x5d0.x = b / a;
    p->at_0x5d0.y = c / a;

    p->at_0x5e0.x += (p->at_0x5d0.x - p->at_0x5e0.x) * kp_ah_circle_pw;
    p->at_0x5e0.y += (p->at_0x5d0.y - p->at_0x5e0.y) * kp_ah_circle_pw;

    d = p->at_0x5d0.x - p->at_0x5e0.x;
    e = p->at_0x5d0.y - p->at_0x5e0.y;

    if (d * d + e * e <= p->ah_circle_r2) {
        if (p->ah_circle_ct) {
            --p->ah_circle_ct;
        }
    } else {
        p->ah_circle_ct = kp_ah_circle_ct;
    }
}

static void calc_acc_vertical(KPADCB* p) {
    KPADStatus* pStatus = &p->status;

    f32 sqrd;
    f32 x = sqrtf(sqrd = p->acc.x * p->acc.x + p->acc.y * p->acc.y);

    f32 y = -p->acc.z;
    f32 invhypot = sqrtf(sqrd + y * y);

    if (invhypot == 0.0f || invhypot >= 2.0f) {
        return;
    }

    x /= invhypot;
    y /= invhypot;

    if (invhypot > 1.0f) {
        invhypot = 2.0f - invhypot;
    }

    invhypot *= invhypot * kp_acc_horizon_pw;

    x = pStatus->acc_vertical.x + (x - pStatus->acc_vertical.x) * invhypot;
    y = pStatus->acc_vertical.y + (y - pStatus->acc_vertical.y) * invhypot;

    invhypot = sqrtf(x * x + y * y);
    if (invhypot != 0.0f) {
        pStatus->acc_vertical.x = x / invhypot;
        pStatus->acc_vertical.y = y / invhypot;
    }
}

static f32 clamp_acc(f32 value, f32 mag) {
    if (value < 0.0f) {
        if (value < -mag) {
            return -mag;
        }
    } else if (value > mag) {
        return mag;
    }

    return value;
}

static void read_kpad_acc(KPADCB* p, KPADUnifiedWpadStatus* pWpadStatus) {
    KPADStatus* pStatus = &p->status;
    Vec vecA, vecB;

    switch (pWpadStatus->fmt) {
    default: {
        return;
    }

    case WPAD_FMT_CORE_BTN_ACC:
    case WPAD_FMT_CORE_BTN_ACC_DPD:
    case WPAD_FMT_FS_BTN_ACC:
    case WPAD_FMT_FS_BTN_ACC_DPD:
    case WPAD_FMT_CLASSIC_BTN_ACC:
    case WPAD_FMT_CLASSIC_BTN_ACC_DPD: {
        // accZ and accY are swapped? is this intended?
        p->acc.x = clamp_acc(-pWpadStatus->u.core.accX * p->coreGravityUnit.x,
                             kp_rm_acc_max);
        p->acc.y = clamp_acc(-pWpadStatus->u.core.accZ * p->coreGravityUnit.z,
                             kp_rm_acc_max);
        p->acc.z = clamp_acc(pWpadStatus->u.core.accY * p->coreGravityUnit.y,
                             kp_rm_acc_max);

        vecB = pStatus->acc;

        calc_acc(p, &pStatus->acc.x, p->acc.x);
        calc_acc(p, &pStatus->acc.y, p->acc.y);
        calc_acc(p, &pStatus->acc.z, p->acc.z);

        pStatus->acc_value = sqrtf(pStatus->acc.x * pStatus->acc.x +
                                   pStatus->acc.y * pStatus->acc.y +
                                   pStatus->acc.z * pStatus->acc.z);

        vecB.x -= pStatus->acc.x;
        vecB.y -= pStatus->acc.y;
        vecB.z -= pStatus->acc.z;

        pStatus->acc_speed =
            sqrtf(vecB.x * vecB.x + vecB.y * vecB.y + vecB.z * vecB.z);

        calc_acc_horizon(p);
        calc_acc_vertical(p);

        if ((pWpadStatus->u.core.err == WPAD_ERR_OK &&
             pWpadStatus->u.core.dev == WPAD_DEV_FREESTYLE &&
             (pWpadStatus->fmt == WPAD_FMT_FS_BTN_ACC ||
              pWpadStatus->fmt == WPAD_FMT_FS_BTN_ACC_DPD))
            //   ||
            // (pWpadStatus->u.core.dev == WPAD_DEV_MPLS_PT_FS &&
            //  pWpadStatus->fmt == WPAD_FMT_MOTION_PLUS &&
            //  pWpadStatus->u.mp.stat & WPAD_MPLS_STATUS_EXTENSION_DATA_VALID)
        ) {
            if (pWpadStatus->u.core.dev == WPAD_DEV_FREESTYLE) {
                vecA.x =
                    clamp_acc(-pWpadStatus->u.fs.fsAccX * p->fsGravityUnit.x,
                              kp_fs_acc_max);
                vecA.y =
                    clamp_acc(-pWpadStatus->u.fs.fsAccZ * p->fsGravityUnit.z,
                              kp_fs_acc_max);
                vecA.z =
                    clamp_acc(pWpadStatus->u.fs.fsAccY * p->fsGravityUnit.y,
                              kp_fs_acc_max);
            } else {
                // vecA.x = clamp_acc(-pWpadStatus->u.mp.ext.fs.fsAccX *
                //                        p->fsGravityUnit.x,
                //                    kp_fs_acc_max);
                // vecA.y = clamp_acc(-pWpadStatus->u.mp.ext.fs.fsAccZ *
                //                        p->fsGravityUnit.z,
                //                    kp_fs_acc_max);
                // vecA.z = clamp_acc(pWpadStatus->u.mp.ext.fs.fsAccY *
                //                        p->fsGravityUnit.y,
                //                    kp_fs_acc_max);
            }

            if (p->reviseEnabled) {
                PSMTXMultVec(kp_fs_rot, &vecA, &vecA);
            }

            vecB = pStatus->ex_status.fs.acc;

            calc_acc(p, &pStatus->ex_status.fs.acc.x, vecA.x);
            calc_acc(p, &pStatus->ex_status.fs.acc.y, vecA.y);
            calc_acc(p, &pStatus->ex_status.fs.acc.z, vecA.z);

            pStatus->ex_status.fs.acc_value = sqrtf(
                pStatus->ex_status.fs.acc.x * pStatus->ex_status.fs.acc.x +
                pStatus->ex_status.fs.acc.y * pStatus->ex_status.fs.acc.y +
                pStatus->ex_status.fs.acc.z * pStatus->ex_status.fs.acc.z);

            vecB.x -= pStatus->ex_status.fs.acc.x;
            vecB.y -= pStatus->ex_status.fs.acc.y;
            vecB.z -= pStatus->ex_status.fs.acc.z;

            pStatus->ex_status.fs.acc_speed =
                sqrtf(vecB.x * vecB.x + vecB.y * vecB.y + vecB.z * vecB.z);
        }

        break;
    }
    }
}

static void get_kobj(KPADCB* p, DPDObject* dpd_obj) {
    const f32 dpd_scale = 0x1.8p-9f - 0x1.0p-10f;
    const f32 dpd_cx = 1.00f - 0x1.0p-10f;
    const f32 dpd_cy = 0.75f - 0x1.0p-10f;

    kobj* pObj = p->kobjs + ARRAY_SIZE(p->kobjs) - 1;
    do {
        if (dpd_obj->size > 0) {
            pObj->pos.x = dpd_obj->x * dpd_scale - dpd_cx;
            pObj->pos.y = dpd_obj->y * dpd_scale - dpd_cy;
            pObj->flags = 0;
            pObj->inactive = 0;
        } else {
            pObj->flags = -1;
        }

        --dpd_obj;
    } while (--pObj >= p->kobjs);
}

static void check_kobj_outside_frame(KPADCB* p, kobj kobjs[]) {
    kobj* pObj;

    pObj = kobjs + KPAD_MAX_DPD_OBJECTS - 1;
    do {
        if (pObj->flags < 0) {
            continue;
        }

        if (pObj->pos.x <= p->frameBorderLeft ||
            pObj->pos.x >= p->frameBorderRight ||
            pObj->pos.y <= p->frameBorderTop ||
            pObj->pos.y >= p->frameBorderBottom) {

            pObj->flags |= 1;
        }
    } while (--pObj >= kobjs);
}

static void check_kobj_same_position(kobj kobjs[]) {
    kobj *pK1, *pK2;

    pK1 = kobjs;
    do {
        if (pK1->flags != 0) {
            continue;
        }

        pK2 = pK1 + 1;
        do {
            if (pK2->flags != 0) {
                continue;
            }

            if (pK1->pos.x == pK2->pos.x && pK1->pos.y == pK2->pos.y) {
                pK2->flags |= 2;
            }
        } while (++pK2 <= kobjs + KPAD_MAX_DPD_OBJECTS - 1);
    } while (++pK1 < kobjs + KPAD_MAX_DPD_OBJECTS - 1);
}

static f32 calc_horizon(KPADCB* p, kobj* pK1, kobj* pK2, f32 out[2]) {
    f32 x = pK2->pos.x - pK1->pos.x;
    f32 y = pK2->pos.y - pK1->pos.y;
    f32 invSqrt = 1.0f / sqrtf(x * x + y * y);

    x *= invSqrt;
    y *= invSqrt;
    out[0] = p->isec_nrm_hori.x * x + p->isec_nrm_hori.y * y;
    out[1] = p->isec_nrm_hori.y * x - p->isec_nrm_hori.x * y;

    return p->dist_vv1 * invSqrt;
}

static s8 select_2obj_first(KPADCB* p) {
    kobj *pLeft, *pRight, *pFirst, *pSecond;
    f32 a, b;
    f32 x[2];

    a = kp_err_first_inpr;

    pLeft = p->kobjs;
    do {
        if (pLeft->flags != 0) {
            continue;
        }

        pRight = pLeft + 1;
        do {
            if (pRight->flags != 0) {
                continue;
            }

            b = calc_horizon(p, pLeft, pRight, x);
            if (b <= p->err_dist_min || b >= kp_err_dist_max) {
                continue;
            }

            b = p->at_0x5d0.x * x[0] + p->at_0x5d0.y * x[1];
            if (b < 0.0f) {
                if (-b > a) {
                    a = -b;

                    pFirst = pRight;
                    pSecond = pLeft;
                }
            } else if (b > a) {
                a = b;

                pFirst = pLeft;
                pSecond = pRight;
            }
        } while (++pRight <= p->kobjs + ARRAY_SIZE(p->kobjs) - 1);
    } while (++pLeft < p->kobjs + ARRAY_SIZE(p->kobjs) - 1);

    if (a == kp_err_first_inpr) {
        return 0;
    }

    p->selected[0] = *pFirst;
    p->selected[1] = *pSecond;

    return 2;
}

static s8 select_2obj_continue(KPADCB* p) {
    f32 a, b, c, d, e;
    f32 x[2];
    kobj *pLeft, *pRight, *pFirst, *pSecond;
    BOOL isNegative;

    // configurable macro constant?
    e = 2.0f;

    pLeft = p->kobjs;
    do {
        if (pLeft->flags != 0) {
            continue;
        }

        pRight = pLeft + 1;
        do {
            if (pRight->flags != 0) {
                continue;
            }

            a = pRight->pos.x - pLeft->pos.x;
            c = pRight->pos.y - pLeft->pos.y;
            b = 1.0f / sqrtf(a * a + c * c);

            x[0] = a * b;
            x[1] = c * b;
            b *= p->dist_vv1;

            if (b <= p->err_dist_min || b >= kp_err_dist_max) {
                continue;
            }

            b -= p->at_0x5b4;

            if (b < 0.0f) {
                b *= p->err_dist_speed_min;
            } else {
                b *= p->err_dist_speed_max;
            }

            if (b >= 1.0f) {
                continue;
            }

            d = p->at_0x5ac.x * x[0] + p->at_0x5ac.y * x[1];
            if (d < 0.0f) {
                d = -d;
                isNegative = TRUE;
            } else {
                isNegative = FALSE;
            }

            if (d <= kp_err_next_inpr) {
                continue;
            }

            d = (1.0f - d) / (1.0f - kp_err_next_inpr);
            b += d;

            if (b < e) {
                e = b;

                if (isNegative) {
                    pFirst = pRight;
                    pSecond = pLeft;
                } else {
                    pFirst = pLeft;
                    pSecond = pRight;
                }
            }

        } while (++pRight <= p->kobjs + ARRAY_SIZE(p->kobjs) - 1);
    } while (++pLeft < p->kobjs + ARRAY_SIZE(p->kobjs) - 1);

    if (e == 2.0f) {
        return 0;
    }

    p->selected[0] = *pFirst;
    p->selected[1] = *pSecond;

    return 2;
}

static s8 select_1obj_first(KPADCB* p) {
    f32 a =
        p->isec_nrm_hori.x * p->at_0x5d0.x + p->isec_nrm_hori.y * p->at_0x5d0.y;

    f32 b =
        p->isec_nrm_hori.y * p->at_0x5d0.x - p->isec_nrm_hori.x * p->at_0x5d0.y;

    a *= p->at_0x5b8;
    b *= p->at_0x5b8;

    struct kobj* kobj = p->kobjs;
    Vec2 vecA, vecB;
    do {
        if (kobj->flags != 0)
            continue;

        vecA.x = kobj->pos.x - a;
        vecA.y = kobj->pos.y - b;
        vecB.x = kobj->pos.x + a;
        vecB.y = kobj->pos.y + b;

        if (vecA.x <= p->frameBorderLeft || vecA.x >= p->frameBorderRight ||
            vecA.y <= p->frameBorderTop || vecA.y >= p->frameBorderBottom) {
            if (vecB.x > p->frameBorderLeft && vecB.x < p->frameBorderRight &&
                vecB.y > p->frameBorderTop && vecB.y < p->frameBorderBottom) {
                p->selected[1] = *kobj;

                p->selected[0].pos = vecA;
                p->selected[0].flags = 0;
                p->selected[0].inactive = -1;

                return -1;
            }
        } else {
            if (vecB.x <= p->frameBorderLeft || vecB.x >= p->frameBorderRight ||
                vecB.y <= p->frameBorderTop || vecB.y >= p->frameBorderBottom) {
                p->selected[0] = *kobj;

                p->selected[1].pos = vecB;
                p->selected[1].flags = 0;
                p->selected[1].inactive = -1;

                return -1;
            }
        }
    } while (++kobj < p->kobjs + ARRAY_LENGTH(p->kobjs));

    return 0;
}
