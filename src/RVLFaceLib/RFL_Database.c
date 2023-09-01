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