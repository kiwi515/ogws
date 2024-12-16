#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/g3d.h>

namespace nw4r {
namespace g3d {
namespace fifo {

void GDSetGenMode2(u8 numTexGens, u8 numChans, u8 numTevs, u8 numInds,
                   GXCullMode cullMode) {

    // clang-format off
    // @note NUMCOLORS is actually three bits
    LoadBPCmd(GX_BP_REG_SSMASK << GX_BP_OPCODE_SHIFT |
        GX_BP_GENMODE_NUMTEX_MASK                    |
        0b11 << GX_BP_GENMODE_NUMCOLORS_SHIFT        |
        GX_BP_GENMODE_NUMTEVSTAGES_MASK              |
        GX_BP_GENMODE_CULLMODE_MASK                  |
        GX_BP_GENMODE_NUMINDSTAGES_MASK);
    // clang-format on

    // clang-format off
    LoadBPCmd(
        numTexGens        << GX_BP_GENMODE_NUMTEX_SHIFT       |
        numChans          << GX_BP_GENMODE_NUMCOLORS_SHIFT    |
        numTevs - 1       << GX_BP_GENMODE_NUMTEVSTAGES_SHIFT |
        cm2hw[cullMode]   << GX_BP_GENMODE_CULLMODE_SHIFT     |
        numInds           << GX_BP_GENMODE_NUMINDSTAGES_SHIFT |
        GX_BP_REG_GENMODE << GX_BP_OPCODE_SHIFT);
    // clang-format on

    LoadXFCmd(GX_XF_REG_NUMCOLORS, numChans);
    LoadXFCmd(GX_XF_REG_NUMTEX, numTexGens);
}

void GDSetCullMode(GXCullMode cullMode) {
    // clang-format off
    LoadBPCmd(GX_BP_REG_SSMASK << GX_BP_OPCODE_SHIFT |
        GX_BP_GENMODE_CULLMODE_MASK);
    // clang-format on

    LoadBPCmd(cm2hw[cullMode] << GX_BP_GENMODE_CULLMODE_SHIFT);
}

void GDSetTexCoordScale2(GXTexCoordID coord, u16 scaleS, u8 biasS, u8 wrapS,
                         u16 scaleT, u8 biasT, u8 wrapT) {
    // clang-format off
    LoadBPCmd(GX_BP_REG_SSMASK << GX_BP_OPCODE_SHIFT |
        GX_BP_SU_SIZE_SCALE_MASK                     |
        GX_BP_SU_SIZE_RANGEBIAS_MASK                 |
        GX_BP_SU_SIZE_CYLINDRICWRAP_MASK);
    // clang-format on

    // clang-format off
    LoadBPCmd(
        scaleS - 1 << GX_BP_SU_SIZE_SCALE_SHIFT         |
        biasS      << GX_BP_SU_SIZE_RANGEBIAS_SHIFT     |
        wrapS      << GX_BP_SU_SIZE_CYLINDRICWRAP_SHIFT |
        GX_BP_REG_SU_SSIZE0 + coord * 2 << GX_BP_OPCODE_SHIFT);
    // clang-format on

    // clang-format off
    LoadBPCmd(
        scaleT - 1 << GX_BP_SU_SIZE_SCALE_SHIFT         |
        biasT      << GX_BP_SU_SIZE_RANGEBIAS_SHIFT     |
        wrapT      << GX_BP_SU_SIZE_CYLINDRICWRAP_SHIFT |
        GX_BP_REG_SU_TSIZE0 + coord * 2 << GX_BP_OPCODE_SHIFT);
    // clang-format on
}

void GDSetIndTexMtx(u32 id, const math::MTX34& rMtx) {
    f32 m00, m01, m02, m10, m11, m12;
    f32 a00, a01, a02, a10, a11, a12;

    s8 scaleExp = 0;

    m00 = rMtx.m[0][0];
    m01 = rMtx.m[0][1];
    m02 = rMtx.m[0][2];
    m10 = rMtx.m[1][0];
    m11 = rMtx.m[1][1];
    m12 = rMtx.m[1][2];

    a00 = math::FAbs(m00);
    a01 = math::FAbs(m01);
    a02 = math::FAbs(m02);
    a10 = math::FAbs(m10);
    a11 = math::FAbs(m11);
    a12 = math::FAbs(m12);

    if (a00 >= 1.0f || a01 >= 1.0f || a02 >= 1.0f || a10 >= 1.0f ||
        a11 >= 1.0f || a12 >= 1.0f) {

        do {
            if (scaleExp >= 46) {
                break;
            }

            scaleExp++;

            m00 /= 2.0f;
            m01 /= 2.0f;
            m02 /= 2.0f;
            m10 /= 2.0f;
            m11 /= 2.0f;
            m12 /= 2.0f;

            a00 /= 2.0f;
            a01 /= 2.0f;
            a02 /= 2.0f;
            a10 /= 2.0f;
            a11 /= 2.0f;
            a12 /= 2.0f;
        } while (a00 >= 1.0f || a01 >= 1.0f || a02 >= 1.0f || a10 >= 1.0f ||
                 a11 >= 1.0f || a12 >= 1.0f);

    } else if (a00 < 0.5f && a01 < 0.5f && a02 < 0.5f && a10 < 0.5f &&
               a11 < 0.5f && a12 < 0.5f) {

        do {
            scaleExp--;

            m00 *= 2.0f;
            m01 *= 2.0f;
            m02 *= 2.0f;
            m10 *= 2.0f;
            m11 *= 2.0f;
            m12 *= 2.0f;

            a00 *= 2.0f;
            a01 *= 2.0f;
            a02 *= 2.0f;
            a10 *= 2.0f;
            a11 *= 2.0f;
            a12 *= 2.0f;

            if (!(a00 < 0.5f) || !(a01 < 0.5f) || !(a02 < 0.5f) ||
                !(a10 < 0.5f) || !(a11 < 0.5f) || !(a12 < 0.5f)) {
                break;
            }

        } while (scaleExp > -17);
    }

    // Hardware stores as -17
    scaleExp += 17;

    // clang-format off
    LoadBPCmd(
        static_cast<u32>((static_cast<int>(1024.0f * m00) & GX_BP_INDMTXA_M00_LMASK) << GX_BP_INDMTXA_M00_SHIFT) |
        static_cast<u32>((static_cast<int>(1024.0f * m10) & GX_BP_INDMTXA_M10_LMASK) << GX_BP_INDMTXA_M10_SHIFT) |
        static_cast<u32>((scaleExp >> 0 & GX_BP_INDMTXA_EXP_LMASK) << GX_BP_INDMTXA_EXP_SHIFT)                   |
        static_cast<u32>(id + GX_BP_REG_INDMTX0A << GX_BP_OPCODE_SHIFT));

    LoadBPCmd(
        static_cast<u32>((static_cast<int>(1024.0f * m01) & GX_BP_INDMTXB_M01_LMASK) << GX_BP_INDMTXB_M01_SHIFT) |
        static_cast<u32>((static_cast<int>(1024.0f * m11) & GX_BP_INDMTXB_M11_LMASK) << GX_BP_INDMTXB_M11_SHIFT) |
        static_cast<u32>((scaleExp >> 2 & GX_BP_INDMTXB_EXP_LMASK) << GX_BP_INDMTXB_EXP_SHIFT)                   |
        static_cast<u32>((id + GX_BP_REG_INDMTX0B << GX_BP_OPCODE_SHIFT)));

    LoadBPCmd(
        static_cast<u32>((static_cast<int>(1024.0f * m02) & GX_BP_INDMTXC_M02_LMASK) << GX_BP_INDMTXC_M02_SHIFT) |
        static_cast<u32>((static_cast<int>(1024.0f * m12) & GX_BP_INDMTXC_M12_LMASK) << GX_BP_INDMTXC_M12_SHIFT) |
        static_cast<u32>((scaleExp >> 4 & GX_BP_INDMTXC_EXP_LMASK) << GX_BP_INDMTXC_EXP_SHIFT)                   |
        static_cast<u32>(id + GX_BP_REG_INDMTX0C << GX_BP_OPCODE_SHIFT));
    // clang-format on
}

void GDResetCurrentMtx() {
    u32 regA = GX_PNMTX0 << GX_CP_MATRIXINDEXA_POSNRM_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXA_TEX0_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXA_TEX1_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXA_TEX2_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXA_TEX3_SHIFT;

    u32 regB = GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXB_TEX4_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXB_TEX5_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXB_TEX6_SHIFT |
               GX_TEXMTX_IDENT << GX_CP_MATRIXINDEXB_TEX7_SHIFT;

    LoadCPCmd(GX_CP_REG_MATRIXINDEXA, regA);
    LoadCPCmd(GX_CP_REG_MATRIXINDEXB, regB);

    LoadXFCmdHdr(GX_XF_REG_MATRIXINDEX0, 2);
    GXCmd1u32(regA);
    GXCmd1u32(regB);
}

void GDSetCurrentMtx(const u32* pIdArray) {
    u32 regA = pIdArray[0] << GX_CP_MATRIXINDEXA_TEX0_SHIFT |
               pIdArray[1] << GX_CP_MATRIXINDEXA_TEX1_SHIFT |
               pIdArray[2] << GX_CP_MATRIXINDEXA_TEX2_SHIFT |
               pIdArray[3] << GX_CP_MATRIXINDEXA_TEX3_SHIFT;

    u32 regB = pIdArray[4] << GX_CP_MATRIXINDEXB_TEX4_SHIFT |
               pIdArray[5] << GX_CP_MATRIXINDEXB_TEX5_SHIFT |
               pIdArray[6] << GX_CP_MATRIXINDEXB_TEX6_SHIFT |
               pIdArray[7] << GX_CP_MATRIXINDEXB_TEX7_SHIFT;

    LoadXFCmdHdr(GX_XF_REG_MATRIXINDEX0, 2);
    GXCmd1u32(regA);
    GXCmd1u32(regB);
}

void GDLoadTexMtxImm3x3(const math::MTX33& rMtx, u32 id) {
    math::MTX34 mtx;
    const math::MTX33* pMtx = &rMtx;

    mtx.m[0][0] = pMtx->m[0][0];
    mtx.m[0][1] = pMtx->m[0][1];
    mtx.m[0][2] = pMtx->m[0][2];
    mtx.m[0][3] = 0.0f;

    mtx.m[1][0] = pMtx->m[1][0];
    mtx.m[1][1] = pMtx->m[1][1];
    mtx.m[1][2] = pMtx->m[1][2];
    mtx.m[1][3] = 0.0f;

    mtx.m[2][0] = pMtx->m[2][0];
    mtx.m[2][1] = pMtx->m[2][1];
    mtx.m[2][2] = pMtx->m[2][2];
    mtx.m[2][3] = 0.0f;

    GXLoadTexMtxImm(mtx, id, GX_MTX_3x4);
}

} // namespace fifo
} // namespace g3d
} // namespace nw4r
