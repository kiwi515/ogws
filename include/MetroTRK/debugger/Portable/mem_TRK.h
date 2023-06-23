#ifndef METROTRK_PORTABLE_MEM_TRK_H
#define METROTRK_PORTABLE_MEM_TRK_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

void * TRK_memset(void *, int, size_t);
void * TRK_memcpy(void *, const void *, size_t);
void TRK_fill_mem(void *, int, size_t);

#ifdef __cplusplus
}
#endif
#endif