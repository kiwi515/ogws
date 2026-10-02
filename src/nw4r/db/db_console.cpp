#include <nw4r/db.h>

namespace nw4r {
namespace db {

static u8* GetTextPtr_(ConsoleHandle console, u16 line, u16 x) {
    return console->textBuf + x + (console->width + 1) * line;
}

static u8* NextLine_(ConsoleHandle console) {
    *GetTextPtr_(console, console->printTop, console->printXPos) = '\0';

    console->printXPos = 0;
    console->printTop++;

    if (console->printTop == console->height &&
        !(console->attr & CONSOLE_ATTR_1)) {

        console->printTop = 0;
    }

    if (console->printTop == console->printTopUsed) {
        console->ringTopLineCnt++;

        if (++console->printTopUsed == console->height) {
            console->printTopUsed = 0;
        }
    }

    return GetTextPtr_(console, console->printTop, 0);
}

static void TerminateLine_(ConsoleHandle console) {
    *GetTextPtr_(console, console->printTop, console->printXPos) = '\0';
}

static u32 GetTabSize_(ConsoleHandle console) {
    s32 tab = (console->attr & (CONSOLE_ATTR_2 | CONSOLE_ATTR_3)) >> 2;
    return 2 << tab;
}

} // namespace db
} // namespace nw4r
