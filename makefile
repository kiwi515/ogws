#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------
TARGET_COL := wii

TARGET := ogws_us_r1

BUILD_DIR := build

# Inputs
S_FILES := $(wildcard asm/*.s)
#C_FILES := $(wildcard src/*.c)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(TARGET).map
#O_FILES := $(S_FILES:.s=.o) $(C_FILES:.c=.o)

include obj_files.mk

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

# Programs
AS       := tools/powerpc-eabi-as
OBJCOPY  := tools/powerpc-eabi-objcopy
CPP      := cpp -P
CC       := tools/codewarrior/GC/3.0/mwcceppc
CC_TRK   := tools/codewarrior/GC/2.7/mwcceppc
CC_MSL   := tools/codewarrior/GC/3.0a3/mwcceppc
LD       := tools/codewarrior/GC/3.0/mwldeppc
ELF2DOL  := tools/elf2dol
SHA1SUM  := sha1sum
PYTHON   := python
PPROC    := tools/postprocess.py
PROGRESS := tools/calcprogress/calcprogress.py

# Options
ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -mapunused -proc gekko -fp hard -nodefaults -nofail
#CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O2,p -i include

#
# Module flags
#

# Compiler flags for the Metrowerks Target Resident Kernel (MetroTRK)
CFLAGS_TRK := -lang c -sdata 0 -use_lmw_stmw on -enum int -inline auto,deferred -rostr -Cpp_exceptions off -proc gekko -fp hard -O4,p -ir include/MetroTRK -I- -i include -ir include/MSL -nodefaults
# Compiler flags for the CodeWarrior runtime library
CFLAGS_RUNTIME := -lang c -use_lmw_stmw on -enum int -inline auto -rostr -Cpp_exceptions off -proc gekko -fp hard -O4,p -ir include/MetroTRK -I- -i include -ir include/MSL -nodefaults
# Compiler flags for the Metrowerks Standard Library (MSL)
CFLAGS_MSL := -lang c -use_lmw_stmw on -enum int -inline auto -rostr -D_IEEE_LIBM -Cpp_exceptions off -proc gekko -fp hard -O4,p -ir include/MetroTRK -I- -i include -ir include/MSL -nodefaults
# Compiler flags for NintendoWare for Revolution
CFLAGS_NW4R := -lang c99 -enum int -inline auto -Cpp_exceptions off -RTTI off -proc gekko -fp hard -O4,p  -ir include/nw4r -I- -Iinclude -ir include/MSL -ir include/revolution -nodefaults
# Compiler flags for EGG
CFLAGS_EGG := -lang c99 -enum int -inline auto -Cpp_exceptions off -RTTI off -proc gekko -fp hard -O4,p  -ir include/egg -ir include/nw4r -I- -Iinclude -ir include/MSL -ir include/revolution -nodefaults -rostr -str pool
# Compiler flags for the RVL SDK
CFLAGS_RVL := -lang c -enum int -O4,p -inline auto -ipa file -Cpp_exceptions off -RTTI off -proc gekko -fp hard -I- -Iinclude -ir include/MSL -ir include/revolution -nodefaults
# Compiler flags for the BTE library
CFLAGS_BTE := -lang c -enum int -O4,p -inline auto -ipa file -Cpp_exceptions off -RTTI off -proc gekko -fp hard -I- -Iinclude -ir include/MSL -ir include/revolution -ir include/revolution/BTE -ir include/revolution/BTE/include \
	-ir include/revolution/BTE/embdrv/sbc/encoder/include -ir include/revolution/BTE/btif/include -ir include/revolution/BTE/bta/include -ir include/revolution/BTE/utils/include  -ir include/revolution/BTE/udrv/include \
	-ir include/revolution/BTE/stack/include -ir include/revolution/BTE/hci/include -nodefaults -DBIG_ENDIAN -DHAS_NO_BDROID_BUILDCFG -DBTE_RVL_TARGET
# Compiler flags for the RVL Face Library
CFLAGS_RFL := -lang c -enum int -O4,p -inline auto -ipa file -volatileasm -Cpp_exceptions off -RTTI off -proc gekko -fp hard -I- -Iinclude -ir include/MSL -ir include/revolution -nodefaults

#
# One-off file flags
#
# EXI/EXIBios.c
CFLAGS_EXIBIOS := -lang c -enum int -O3 -inline auto -ipa file -volatileasm -Cpp_exceptions off -RTTI off -proc gekko -fp hard -I- -Iinclude -ir include/MSL -ir include/revolution -nodefaults

# elf2dol needs to know these in order to calculate sbss correctly.
BSS_PDHR := 9

# Flags for Riidefi's post-processing script
PPROCFLAGS := -fsymbol-fixup

# Flags for progress calculation script
PROGRESSFLAGS := --dol=$(DOL) --map=$(MAP)

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

default: all

all: $(DOL)

ALL_DIRS := build $(BUILD_DIR) $(sort $(dir $(O_FILES)))
$(warning ALL_DIRS is $(ALL_DIRS))
# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)


.PHONY: tools

$(LDSCRIPT): ldscript.lcf
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<
#	cp ldscript.lcf $(LDSCRIPT)

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@ $(BSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1
	$(PROGRESS) $(PROGRESSFLAGS)

clean:
	rm -fdr build
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

$(ELF): $(O_FILES) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) $(O_FILES)
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
#	$(OBJCOPY) $@ $@

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/nw4r/%.o: src/nw4r/%.cpp
	$(CC) $(CFLAGS_NW4R) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/egg/%.o: src/egg/%.cpp
	$(CC) $(CFLAGS_EGG) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/runtime/%.o: src/runtime/%.c
	$(CC) -lang c $(CFLAGS_RUNTIME) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/runtime/%.o: src/runtime/%.cpp
	$(CC) -lang c++ $(CFLAGS_RUNTIME) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/MSL/%.o: src/MSL/%.c
	$(CC_MSL) $(CFLAGS_MSL) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/MetroTRK/%.o: src/MetroTRK/%.c
	$(CC_TRK) $(CFLAGS_TRK) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

# EXIBios is a special case, compiled differently from rest of library
$(BUILD_DIR)/revolution/EXI/EXIBios.o: src/revolution/EXI/EXIBios.c
	$(CC) $(CFLAGS_EXIBIOS) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

# BTE flags to allow minimal changes to the original source
$(BUILD_DIR)/revolution/BTE/%.o: src/revolution/BTE/%.c
	$(CC) $(CFLAGS_BTE) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/revolution/%.o: src/revolution/%.c
	$(CC) $(CFLAGS_RVL) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/RVLFaceLib/%.o: src/RVLFaceLib/%.c
	$(CC) $(CFLAGS_RFL) -c -o $@ $<
	$(PPROC) $(PPROCFLAGS) $@