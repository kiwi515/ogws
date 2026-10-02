#ifndef NW4R_DB_CONSOLE_H
#define NW4R_DB_CONSOLE_H

#include <nw4r/types_nw4r.h>

#include <nw4r/db/db_assert.h>
#include <nw4r/ut.h>

namespace nw4r {
namespace db {

enum ConsoleOutputType {
    CONSOLE_OUTPUT_NONE,
    CONSOLE_OUTPUT_DISPLAY,
    CONSOLE_OUTPUT_TERMINAL,
    CONSOLE_OUTPUT_ALL,
};

enum ConsoleAttr {
    CONSOLE_ATTR_0 = 1 << 0,
    CONSOLE_ATTR_1 = 1 << 1,
    CONSOLE_ATTR_2 = 1 << 2,
    CONSOLE_ATTR_3 = 1 << 3,
    CONSOLE_ATTR_4 = 1 << 4,
};

namespace detail {

struct ConsoleHead {
    u8* textBuf;                  // at 0x0
    u16 width;                    // at 0x4
    u16 height;                   // at 0x6
    u16 priority;                 // at 0x8
    u16 attr;                     // at 0xA
    u16 printTop;                 // at 0xC
    u16 printXPos;                // at 0xE
    u16 printTopUsed;             // at 0x10
    u16 ringTop;                  // at 0x12
    s32 ringTopLineCnt;           // at 0x14
    s32 viewTopLine;              // at 0x18
    s16 viewPosX;                 // at 0x1C
    s16 viewPosY;                 // at 0x1E
    u16 viewLines;                // at 0x20
    u8 isVisible;                 // at 0x22
    u8 padding_[1];               // at 0x23
    nw4r::ut::TextWriter* writer; // at 0x24
    ConsoleHead* next;            // at 0x28
};

} // namespace detail

// Public namespace alias
typedef nw4r::db::detail::ConsoleHead* ConsoleHandle;

s32 Console_GetTotalLines(ConsoleHandle console);

void Console_VFPrintf(ConsoleOutputType type, ConsoleHandle console,
                      const char* pFmt, std::va_list argv);

static inline void Console_VPrintf(ConsoleHandle console, const char* pFmt,
                                   std::va_list argv) {

    Console_VFPrintf(CONSOLE_OUTPUT_ALL, console, pFmt, argv);
}

static inline u16 Console_GetViewHeight(ConsoleHandle console) {
    NW4R_NULL_ASSERT(LINE(433), console);

    return console->viewLines;
}

static inline bool Console_SetVisible(ConsoleHandle console, bool visible) {
    NW4R_NULL_ASSERT(LINE(496), console);

    bool before = console->isVisible;
    console->isVisible = visible;
    return before;
}

static inline s32 Console_SetViewBaseLine(ConsoleHandle console, s32 line) {
    NW4R_NULL_ASSERT(LINE(556), console);

    s32 before = console->viewTopLine;
    console->viewTopLine = line;
    return before;
}

static inline s32 Console_ShowLatestLine(ConsoleHandle console) {
    s32 line = Console_GetTotalLines(console) - Console_GetViewHeight(console);
    if (line < 0) {
        line = 0;
    }

    Console_SetViewBaseLine(console, line);
    return line;
}

} // namespace db
} // namespace nw4r

#endif
