#include <nw4r/db.h>

#include <revolution/DVD.h>
#include <revolution/OS.h>

namespace nw4r {
namespace db {

#define MAP_BUF_SIZE 512
static u8 sMapBuf[MAP_BUF_SIZE] ALIGN(32) = {};
static s32 sMapBufOffset = -1;

static DVDFileInfo sFileInfo;
static u32 sFileLength = 0;

static MapFile* sMapFileList = NULL;

static void AppendMapFile_(MapFile* pMapFile) {
    NW4R_NULL_ASSERT(pMapFile);

    if (sMapFileList == NULL) {
        sMapFileList = pMapFile;
        return;
    }

    // Static linkage takes priority
    if (pMapFile->moduleInfo != NULL) {
        pMapFile->next = sMapFileList->next;
        sMapFileList->next = pMapFile;
    } else {
        pMapFile->next = sMapFileList;
        sMapFileList = pMapFile;
    }
}

static void RemoveMapFile_(MapFile* pMapFile) {
    NW4R_NULL_ASSERT(pMapFile);

    if (pMapFile == sMapFileList) {
        sMapFileList = sMapFileList->next;
        return;
    }

    MapFile* it = sMapFileList;

    for (; it != NULL; it = it->next) {
        if (it->next == pMapFile) {
            it->next = pMapFile->next;
            break;
        }
    }
}

MapFile* MapFile_RegistOnMem(void* pMapWork, u8* pMapData, u32 /* mapSize */,
                             const OSModuleInfo* pModuleInfo) {
    NW4R_NULL_ASSERT(pMapWork);
    NW4R_NULL_ASSERT(pMapData);

    MapFile* pMapFile = static_cast<MapFile*>(pMapWork);

    pMapFile->mapBuf = pMapData;
    pMapFile->moduleInfo = pModuleInfo;
    pMapFile->fileEntry = -1;
    pMapFile->next = NULL;

    AppendMapFile_(pMapFile);
    return pMapFile;
}

MapFile* MapFile_RegistOnDvd(void* pMapWork, const char* pPath,
                             const OSModuleInfo* pModuleInfo) {
    NW4R_NULL_ASSERT(pMapWork);
    NW4R_NULL_ASSERT(pPath);

    MapFile* pMapFile = static_cast<MapFile*>(pMapWork);

    pMapFile->mapBuf = NULL;
    pMapFile->moduleInfo = pModuleInfo;
    pMapFile->fileEntry = DVDConvertPathToEntrynum(pPath);
    pMapFile->next = NULL;

    NW4R_ASSERT(pMapFile->fileEntry >= 0);

    AppendMapFile_(pMapFile);
    return pMapFile;
}

void MapFile_Unregist(MapFile* pMapFile) {
    RemoveMapFile_(pMapFile);
}

void MapFile_UnregistAll() {
    sMapFileList = NULL;
}

bool MapFile_Exists() {
    return sMapFileList != NULL ? true : false;
}

typedef u8 (*GetCharFunc)(const u8* pBuffer);
static GetCharFunc GetCharPtr_ = NULL;

static u8 GetCharOnMem_(const u8* pBuffer) {
    return *pBuffer;
}

static u8 GetCharOnDvd_(const u8* pBuffer) {
    s32 address = reinterpret_cast<s32>(pBuffer) & ~0x80000000;
    s32 offset = address - sMapBufOffset;
    s32 len, size;

    if (address >= sFileLength) {
        return '\0';
    }

    if (sMapBufOffset < 0 || offset < 0 || offset >= MAP_BUF_SIZE) {
        size = MAP_BUF_SIZE;

        sMapBufOffset = ROUND_DOWN(address, 32);
        offset = address - sMapBufOffset;

        if (sMapBufOffset + MAP_BUF_SIZE >= sFileLength) {
            size = ROUND_UP(sFileLength - sMapBufOffset, 32);
        }

        BOOL enabled = OSEnableInterrupts();

        len = DVDReadAsyncPrio(&sFileInfo, sMapBuf, size, sMapBufOffset, NULL,
                               DVD_PRIO_MEDIUM);

        while (DVDGetCommandBlockStatus(&sFileInfo.block) != DVD_STATE_IDLE) {
            ;
        }

        OSRestoreInterrupts(enabled);

        if (len <= 0) {
            return '\0';
        }
    }

    return sMapBuf[offset];
}

static u8* SearchNextLine_(u8* pBuffer, s32 lines) {
    u8 ch;

    NW4R_NULL_ASSERT(LINE(363), GetCharPtr_);

    if (pBuffer == NULL) {
        return NULL;
    }

    while ((ch = GetCharPtr_(pBuffer)) != '\0') {
        if (ch == '\n' && --lines <= 0) {
            return pBuffer + 1;
        }

        pBuffer++;
    }

    return NULL;
}

// SearchNextSection_
// SearchParam_
// XStrToU32_
// CopySymbol_
// QuerySymbolToMapFile_
// QuerySymbolToSingleMapFile_

bool MapFile_QuerySymbol(u32 address, u8* pBuffer, u32 maxlen);

} // namespace db
} // namespace nw4r
