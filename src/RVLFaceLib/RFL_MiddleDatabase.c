#include <RVLFaceLib/RVLFaceLibInternal.h>

typedef struct RandomParam {
    u8 sex;     // at 0x0
    u8 age;     // at 0x1
    u8 race;    // at 0x2
    u8 padding; // at 0x3
} RandomParam;

typedef struct HiddenRandomParam {
    u16 dstIdx; // at 0x0
    u8 sex;     // at 0x2
    u8 padding; // at 0x3
} HiddenRandomParam;

typedef struct HiddenNewOldParam {
    s32 sex : 2;
    s32 srcIdx : 15;
    s32 dstIdx : 15;
} HiddenNewOldParam;

typedef struct Param2 {
    s16 lastSrcIdx; // at 0x0
    u16 padding;    // at 0x2
} Param2;

u32 RFLGetMiddleDBBufferSize(u16 size) {
    return size * sizeof(RFLiCharHRawData);
}

void RFLInitMiddleDB(RFLMiddleDB* db, RFLMiddleDBType type, void* buffer,
                     u16 size) {
    RFLiMiddleDB* db_ = (RFLiMiddleDB*)db;
    HiddenNewOldParam* nparam;
    HiddenRandomParam* hparam;
    RandomParam* rparam;

    if (db == NULL) {
        return;
    }

    if (buffer == NULL) {
        return;
    }

    db_->type = type;
    db_->callback = NULL;
    db_->size = size;
    db_->data = (RFLiCharHRawData*)buffer;
    db_->storedSize = 0;
    db_->userData1 = 0;
    db_->userData2 = 0;

    switch (type) {
    case RFLMiddleDBType_Random:
        rparam = (RandomParam*)&db_->userData1;

        if (size > RFL_DB_CHAR_MAX) {
            return;
        }

        rparam->sex = RFLSex_All;
        rparam->age = RFLAge_All;
        rparam->race = RFLRace_All;
        break;
    case RFLMiddleDBType_HiddenNewer:
    case RFLMiddleDBType_HiddenOlder:
        nparam = (HiddenNewOldParam*)&db_->userData1;

        if (size > RFL_HDB_DATA_MAX) {
            return;
        }

        nparam->srcIdx = -1;
        nparam->dstIdx = 0;
        break;
    case RFLMiddleDBType_HiddenRandom:
        hparam = (HiddenRandomParam*)&db_->userData1;
        hparam->sex = RFLSex_All;
        hparam->dstIdx = 0;
        break;
    }

    memset(db_->data, 0, RFLGetMiddleDBBufferSize(db_->size));
}

static BOOL checkHiddenData_(RFLiCharHRawData* data) {
    RFLiCharInfo info;

    if (!RFLiIsValidID(data->createID)) {
        return FALSE;
    }

    RFLiConvertHRaw2Info(data, &info);
    return RFLiCheckValidInfo(&info) ? TRUE : FALSE;
}

static void updateHDBcallback_(u32 arg) {
    HiddenNewOldParam* nparam;
    RFLiMiddleDB* db;

    db = (RFLiMiddleDB*)arg;
    nparam = (HiddenNewOldParam*)&db->userData1;

    if (RFLGetAsyncStatus() == RFLErrcode_Success ||
        RFLGetAsyncStatus() == RFLErrcode_Broken) {
        s16 src = -1;

        if (db->type == RFLMiddleDBType_HiddenOlder) {
            src = RFLiGetHiddenNext(nparam->srcIdx);
        } else {
            src = RFLiGetHiddenPrev(nparam->srcIdx);
        }

        if (RFLGetAsyncStatus() != RFLErrcode_Broken &&
            checkHiddenData_(&db->data[db->storedSize])) {
            db->storedSize++;
        }

        nparam->dstIdx++;

        if (src >= 0 && nparam->dstIdx < db->size) {
            nparam->srcIdx = src;

            RFLErrcode err = RFLiLoadHiddenDataAsync(
                &db->data[db->storedSize], nparam->srcIdx, updateHDBcallback_,
                (u32)db);

            if (err != RFLErrcode_Busy) {
                RFLiEndWorking(err);
            }
        } else {
            RFLiGetManager()->lastErrCode = db->storedSize < db->size
                                                ? RFLErrcode_DBNodata
                                                : RFLErrcode_Success;
        }
    }

    if (!RFLiIsWorking()) {
        if (RFLGetAsyncStatus() == RFLErrcode_NANDCommandfail &&
            RFLGetLastReason() == NAND_RESULT_BUSY) {
            Param2* param2 = (Param2*)&db->userData2;
            nparam->srcIdx = param2->lastSrcIdx;
            db->storedSize = 0;
            nparam->dstIdx = 0;
        }

        if (db->callback != NULL) {
            db->callback();
        }
    }
}

static s16 stepOne_(s16 srcIdx, BOOL oldIsHead) {
    RFLiHDBManager* mgr = RFLiGetHDBManager();
    s16 ret = -1;

    if (oldIsHead) {
        if (srcIdx < 0) {
            ret = RFLiGetHiddenHeader()->head;
        } else {
            ret = RFLiGetHiddenNext(srcIdx);
        }
    } else {
        if (srcIdx < 0) {
            ret = RFLiGetHiddenHeader()->tail;
        } else {
            ret = RFLiGetHiddenPrev(srcIdx);
        }
    }

    return ret;
}

static void loadHiddenDataSync_(RFLiMiddleDB* db) {
    s16 src = -1;
    BOOL running = TRUE;
    HiddenNewOldParam* nparam = (HiddenNewOldParam*)&db->userData1;

    while (running) {
        RFLiLoadCachedHiddenData(&db->data[db->storedSize], nparam->srcIdx);

        if (db->type == RFLMiddleDBType_HiddenOlder) {
            src = RFLiGetHiddenNext(nparam->srcIdx);
        } else {
            src = RFLiGetHiddenPrev(nparam->srcIdx);
        }

        if (checkHiddenData_(&db->data[db->storedSize])) {
            db->storedSize++;
        }

        nparam->dstIdx++;

        if (src >= 0 && nparam->dstIdx < db->size) {
            nparam->srcIdx = src;
        } else {
            running = FALSE;
        }
    }

    RFLiEndWorking(nparam->srcIdx == -1 ? RFLErrcode_DBNodata
                                        : RFLErrcode_Success);
}

static void updateHiddenOld_(RFLiMiddleDB* db, BOOL oldIsHead, BOOL cache) {
    HiddenNewOldParam* nparam;
    s16 src;

    if (!RFLiDBIsLoaded()) {
        RFLiEndWorking(RFLErrcode_DBNodata);
        return;
    }

    if (db->data == NULL || db->size <= 0 || !RFLiDBIsLoaded()) {
        RFLiEndWorking(RFLErrcode_NotAvailable);
        return;
    }

    nparam = (HiddenNewOldParam*)&db->userData1;
    src = stepOne_(nparam->srcIdx, oldIsHead);

    if (src >= 0) {
        nparam->srcIdx = src;

        if (cache) {
            loadHiddenDataSync_(db);
        } else {
            RFLErrcode err = RFLiLoadHiddenDataAsync(
                &db->data[nparam->dstIdx], nparam->srcIdx, updateHDBcallback_,
                (u32)db);

            if (err != RFLErrcode_Busy) {
                RFLiEndWorking(err);
            }
        }
    } else {
        RFLiEndWorking(RFLErrcode_DBNodata);
    }
}

static void loadHiddenRandomSync_(RFLiMiddleDB* db) {
    ;
    ;
}

static void updateHDBRandcallback_(u32 arg) {
    ;
    ;
}

static void updateHiddenRandom_(RFLiMiddleDB* db, BOOL cache) {
    ;
    ;
}

static void updateRandom_(RFLiMiddleDB* db) {
    ;
    ;
}

static void startUpdateDB_(RFLiMiddleDB* db) {
    Param2* param2;
    HiddenNewOldParam* nparam;
    HiddenRandomParam* hparam;

    db->storedSize = 0;
    memset(db->data, 0, RFLGetMiddleDBBufferSize(db->size));

    switch (db->type) {
    case RFLMiddleDBType_HiddenNewer:
    case RFLMiddleDBType_HiddenOlder:
        nparam = (HiddenNewOldParam*)&db->userData1;
        param2 = (Param2*)&db->userData2;

        nparam->dstIdx = 0;
        param2->lastSrcIdx = nparam->srcIdx;
        break;
    case RFLMiddleDBType_HiddenRandom:
        hparam = (HiddenRandomParam*)&db->userData1;
        param2 = (Param2*)&db->userData2;

        hparam->dstIdx = 0;
        param2->lastSrcIdx = 0;
        break;
    }
}

RFLErrcode RFLUpdateMiddleDBAsync(RFLMiddleDB* db) {
    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (RFLAvailable()) {
        return RFLiUpdateMiddleDBAsync(db, NULL, FALSE);
    }

    return RFLErrcode_NotAvailable;
}

RFLErrcode RFLiUpdateMiddleDBAsync(RFLMiddleDB* db, RFLiCallback cb,
                                   BOOL cache) {
    RFLiMiddleDB* db_ = (RFLiMiddleDB*)db;

    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }

    db_->callback = cb;
    startUpdateDB_(db_);

    switch (db_->type) {
    case RFLMiddleDBType_HiddenRandom:
        updateHiddenRandom_(db_, cache);
        break;
    case RFLMiddleDBType_HiddenNewer:
        updateHiddenOld_(db_, FALSE, cache);
        break;
    case RFLMiddleDBType_HiddenOlder:
        updateHiddenOld_(db_, TRUE, cache);
        break;
    case RFLMiddleDBType_Random:
        updateRandom_(db_);
        break;
    }

    if (!RFLiIsWorking() && db_->callback != NULL) {
        db_->callback();
    }

    return RFLGetAsyncStatus();
}

RFLMiddleDBType RFLGetMiddleDBType(const RFLMiddleDB* db) {
    return ((RFLiMiddleDB*)db)->type;
}

u16 RFLGetMiddleDBStoredSize(const RFLMiddleDB* db) {
    return ((RFLiMiddleDB*)db)->storedSize;
}

BOOL RFLiGetCharInfoMiddleDB(RFLiCharInfo* info, const RFLMiddleDB* db,
                             u16 index) {
    RFLiCharHRawData* data;
    RFLiMiddleDB* db_ = (RFLiMiddleDB*)db;

    if (db_ == NULL) {
        return FALSE;
    }

    if (index >= db_->size) {
        return FALSE;
    }

    if (db_->storedSize <= 0) {
        return FALSE;
    }

    data = &db_->data[index];
    if (!RFLiIsValidID(data->createID)) {
        return FALSE;
    }

    RFLiConvertHRaw2Info(data, info);
    return TRUE;
}

void RFLSetMiddleDBRandomMask(RFLMiddleDB* db, RFLSex sex, RFLAge age,
                              RFLRace race) {
    RandomParam* rparam;
    RFLiMiddleDB* db_ = (RFLiMiddleDB*)db;

    if (RFLGetMiddleDBType(db) != RFLMiddleDBType_Random) {
        return;
    }

    rparam = (RandomParam*)&db_->userData1;
    rparam->sex = sex;
    rparam->age = age;
    rparam->race = race;
}

void RFLSetMiddleDBHiddenMask(RFLMiddleDB* db, RFLSex sex) {
    HiddenRandomParam* hparam;
    HiddenNewOldParam* nparam;
    RFLiMiddleDB* db_ = (RFLiMiddleDB*)db;

    switch (RFLGetMiddleDBType(db)) {
    case RFLMiddleDBType_HiddenRandom:
        hparam = (HiddenRandomParam*)&db_->userData1;
        hparam->sex = sex;
        break;
    case RFLMiddleDBType_HiddenNewer:
    case RFLMiddleDBType_HiddenOlder:
        nparam = (HiddenNewOldParam*)&db_->userData1;
        nparam->sex = sex;
        break;
    }
}

RFLErrcode RFLiAddMiddleDBUserData(RFLMiddleDB* db, RFLiCharRawData* raw) {
    ;
    ;
}

RFLErrcode RFLAddMiddleDBStoreData(RFLMiddleDB* db, /* RFLStoreData* data */) {
    ;
    ;
}
