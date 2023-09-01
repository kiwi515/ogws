#include <RVLFaceLib/RVLFaceLibInternal.h>

void RFLiInitDatabase(MEMiHeapHead* heap) {
    RFLiDBManager* mgr = RFLiGetDBManager();

    mgr->database =
        (RFLiDatabase*)MEMAllocFromExpHeapEx(heap, sizeof(RFLiDatabase), 32);
    mgr->saveCb = NULL;
    mgr->formatCb = NULL;
    mgr->bootloadCb = NULL;

    RFLiClearDBBuffer();
}

static void bootloadCheckCRCCb_(u32 crc) {
    RFLiDBManager* mgr = RFLiGetDBManager();

    if (crc != 0) {
        RFLiGetManager()->lastErrCode = RFLErrcode_Loadfail;
        RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
    } else {
        RFLiGetManager()->lastErrCode = RFLErrcode_Success;
    }

    RFLiCloseAsync(RFLiFileType_Database, mgr->bootloadCb);
}

// https://decomp.me/scratch/PHq7v
static void bootloadDBcallback_(void) {
    RFLiDBManager* mgr = RFLiGetDBManager();
}