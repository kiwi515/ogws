#ifndef RVL_SDK_WUD_H
#define RVL_SDK_WUD_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

void* App_MEMalloc(u32 size);
void App_MEMfree(void* block);

#ifdef __cplusplus
}
#endif
#endif
