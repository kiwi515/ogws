#include <revolution/IPC.h>
#include <revolution/OS.h>

#define IPC_HEAP_MAX 8

typedef enum {
    IPC_HEAP_CHUNK_FREE = 0xBABE0000,
    IPC_HEAP_CHUNK_USED = 0xBABE0001,
    IPC_HEAP_CHUNK_FORALIGN = 0xBABE0002
};

typedef struct IPCHeapChunk {
    u32 magic;                 // at 0x0
    u32 size;                  // at 0x4
    struct IPCHeapChunk* prev; // at 0x8
    struct IPCHeapChunk* next; // at 0xC
} IPCHeapChunk;

typedef struct IPCHeapDesc {
    void* start;        // at 0x0
    u32 WORD_0x4;       // at 0x4
    u32 size;           // at 0x8
    IPCHeapChunk* head; // at 0xC
} IPCHeapDesc;

static IPCHeapDesc __heaps[IPC_HEAP_MAX];

static void __iosCoalesceChunk(IPCHeapChunk* chunk) {
    IPCHeapChunk* next;

    if (chunk == NULL) {
        return;
    }

    if ((u8*)chunk->next != (u8*)chunk + chunk->size) {
        return;
    }

    next = chunk->next;

    chunk->next = next->next;
    if (chunk->next != NULL) {
        chunk->next->prev = chunk;
    }

    chunk->size = next->size + chunk->size + sizeof(IPCHeapChunk);
}

s32 iosCreateHeap(void* base, u32 size) {
    s32 ret = IPC_RESULT_INVALID_INTERNAL;
    BOOL enabled = OSDisableInterrupts();
    IPCHeapDesc* desc;
    s32 i;

    if ((u32)base % 32 != 0) {
        goto _exit;
    }

    for (i = 0; i < IPC_HEAP_MAX; i++) {
        if (__heaps[i].start == NULL) {
            break;
        }
    }

    if (i == IPC_HEAP_MAX) {
        ret = IPC_RESULT_CONN_MAX_INTERNAL;
        goto _exit;
    }

    desc = &__heaps[i];
    desc->start = base;
    desc->size = size;
    desc->head = (IPCHeapChunk*)base;

    desc->head->magic = IPC_HEAP_CHUNK_FREE;
    desc->head->size = size - sizeof(IPCHeapChunk);
    desc->head->prev = NULL;
    desc->head->next = NULL;

    ret = i;

_exit:
    OSRestoreInterrupts(enabled);
    return ret;
}

void* __iosAlloc(s32 handle, u32 size, u32 align) {
    BOOL enabled;
    IPCHeapDesc* desc;
    u8* block;
    IPCHeapChunk* chunk;
    IPCHeapChunk* best;
    u8* bestMem;
    u32 bestUnalign;

    block = NULL;
    enabled = OSDisableInterrupts();

    if (size == 0 || align == 0) {
        goto _exit;
    }

    if (align & (align - 1)) {
        goto _exit;
    }

    if (align < 32) {
        align = 32;
    }

    size = ROUND_UP(size, 32);

    if (handle < 0 || handle >= IPC_HEAP_MAX || __heaps[handle].start == NULL) {
        block = NULL;
        goto _exit;
    }

    desc = &__heaps[handle];
    best = NULL;

    // Find chunk best fit for specified size
    for (chunk = desc->head; chunk != NULL; chunk = chunk->next) {
        u8* chunkMem = (u8*)chunk + sizeof(IPCHeapChunk);
        u32 chunkUnalign =
            (align - 1) & (align - ((u32)chunkMem & (align - 1)));

        if (chunk->size == size && chunkUnalign == 0) {
            best = chunk;
            break;
        }

        if (chunk->size < size + chunkUnalign) {
            continue;
        }

        if (best == NULL || chunk->size < best->size) {
            best = chunk;
        }
    }

    if (best == NULL) {
        goto _exit;
    }

    bestMem = (u8*)best + sizeof(IPCHeapChunk);
    bestUnalign = (align - 1) & (align - ((u32)bestMem & (align - 1)));

    // Split off extra size that won't be used by this allocation
    if (best->size > size + bestUnalign + sizeof(IPCHeapChunk)) {
        IPCHeapChunk* rest = (IPCHeapChunk*)((u8*)best + size + bestUnalign +
                                             sizeof(IPCHeapChunk));

        rest->magic = IPC_HEAP_CHUNK_FREE;
        rest->size = best->size - size - bestUnalign - sizeof(IPCHeapChunk);
        rest->next = best->next;

        if (rest->next != NULL) {
            rest->next->prev = rest;
        }

        best->next = rest;
        best->size = size + bestUnalign;
    }

    best->magic = IPC_HEAP_CHUNK_USED;

    if (best->prev != NULL) {
        best->prev->next = best->next;
    } else {
        desc->head = best->next;
    }

    if (best->next != NULL) {
        best->next->prev = best->prev;
    }

    best->next = NULL;
    best->prev = NULL;

    // Looks like we create an aligned header for unaligned chunks?
    block = (u8*)best + bestUnalign + sizeof(IPCHeapChunk);
    if (bestUnalign != 0) {
        IPCHeapChunk* aligned = (IPCHeapChunk*)(block - sizeof(IPCHeapChunk));
        aligned->magic = IPC_HEAP_CHUNK_FORALIGN;
        aligned->prev = best;
    }

_exit:
    OSRestoreInterrupts(enabled);
    return block;
}

void* iosAllocAligned(s32 handle, u32 size, u32 align) {
    return __iosAlloc(handle, size, align);
}

s32 iosFree(s32 handle, void* block) {
    ;
}
