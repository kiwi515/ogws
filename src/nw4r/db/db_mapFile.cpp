#include <nw4r/db.h>

#include <revolution/DVD.h>
#include <revolution/OS.h>

namespace nw4r {
namespace db {

static MapFile* sMapFileList = NULL;

static void AppendMapFile_(MapFile*) {}
static void RemoveMapFile_(MapFile*) {}

MapFile* MapFile_RegistOnMem(void* pMapWork, u8* pMapData, u32,
                             const OSModuleInfo* pModuleInfo) {
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
    MapFile* pMapFile = static_cast<MapFile*>(pMapWork);

    pMapFile->mapBuf = NULL;
    pMapFile->moduleInfo = pModuleInfo;
    pMapFile->fileEntry = DVDConvertPathToEntrynum(pPath);
    pMapFile->next = NULL;

    AppendMapFile_(pMapFile);
    return pMapFile;
}

void MapFile_Unregist(MapFile*) {}

void MapFile_UnregistAll() {
    sMapFileList = NULL;
}

bool MapFile_Exists() {
    return sMapFileList != NULL ? true : false;
}

bool MapFile_QuerySymbol(u32 address, u8* pBuffer, u32 maxlen);

} // namespace db
} // namespace nw4r
