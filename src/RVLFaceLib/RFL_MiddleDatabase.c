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

static void updateHDBcallback_(u32 arg) {
#pragma unused(arg)
    HiddenNewOldParam* nparam;
    RFLiMiddleDB* db;

    db = (RFLiMiddleDB*)arg;
    nparam = (HiddenNewOldParam*)&db->userData1;

    if (RFLGetAsyncStatus() == RFLErrcode_Success ||
        RFLGetAsyncStatus() == RFLErrcode_Broken) {
        s16 src = -1;
        RFLiHDBManager* mgr = RFLiGetDBManager();
        BOOL find = FALSE;

        if (db->type == RFLMiddleDBType_HiddenOlder) {
            src = RFLiGetHiddenNext(nparam->srcIdx);
        } else {
            src = RFLiGetHiddenPrev(nparam->srcIdx);
        }
    }

    if (!RFLiIsWorking()) {
        if (RFLGetAsyncStatus() == RFLErrcode_NANDCommandfail &&
            RFLGetLastReason() == NAND_RESULT_BUSY) {
            Param2* param2 = (Param2*)&db->userData2;
            // TODO
        }

        if (db->callback != NULL) {
            db->callback();
        }
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

static void startUpdateDB_(RFLiMiddleDB* db) {
    Param2* param2;
    HiddenNewOldParam* nparam;
    HiddenRandomParam* hparam;

    db->storedSize = 0;
    memset(db->data, 0, db->size * sizeof(RFLiCharHRawData));

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
