#include <math.h>
#include <revolution/MTX.h>

static f32 Unit01[] = {0.0f, 1.0f};

void PSMTXIdentity(register Mtx mtx) {
    register f32 c_zero = 0.0f;
    register f32 c_one = 1.0f;
    register f32 c_onezero, c_zeroone;

    // clang-format off
    asm {        
        psq_st c_zero, 8(mtx),  0, 0
        psq_st c_zero, 24(mtx), 0, 0
        psq_st c_zero, 32(mtx), 0, 0

        ps_merge10 c_onezero, c_one,  c_zero
        ps_merge01 c_zeroone, c_zero, c_one

        psq_st c_zeroone, 16(mtx), 0, 0
        psq_st c_onezero, 0(mtx),  0, 0
        psq_st c_onezero, 40(mtx), 0, 0
    }
    // clang-format on
}

asm void PSMTXCopy(register const Mtx src, register Mtx dst) {
    // clang-format off
    nofralloc

    psq_l  f0, 0(src), 0, 0
    psq_st f0, 0(dst), 0, 0
    
    psq_l  f1, 8(src), 0, 0
    psq_st f1, 8(dst), 0, 0
    
    psq_l  f2, 16(src), 0, 0
    psq_st f2, 16(dst), 0, 0
    
    psq_l  f3, 24(src), 0, 0
    psq_st f3, 24(dst), 0, 0
    
    psq_l  f4, 32(src), 0, 0
    psq_st f4, 32(dst), 0, 0

    psq_l  f5, 40(src), 0, 0
    psq_st f5, 40(dst), 0, 0

    blr
    // clang-format on
}

void PSMTXConcat(const Mtx, const Mtx, Mtx) {
    ;
    ;
}

void PSMTXConcatArray(const Mtx, const Mtx, Mtx, u32) {
    ;
    ;
}

void PSMTXTranspose(register const Mtx src, register Mtx dst) {
    /**
     * M00 M01 M02 X     M00 M10 M20 0
     * M10 M11 M12 Y ->  M01 M11 M21 0
     * M20 M21 M22 Z     M02 M12 M22 0
     */

    register f32 c_zero = 0.0f;

    // clang-format off
    asm {
        psq_l      f1, 0(src),   0, 0
        psq_l      f2, 16(src),  0, 0
        ps_merge00 f4, f1, f2 // M00, M10
        psq_st     f4, 0(dst),  0, 0

        ps_merge11 f5, f1, f2 // M01, M11
        psq_st     f5, 16(dst), 0, 0

        psq_l      f3, 8(src),   1, 0
        psq_l      f2, 24(src),  1, 0
        ps_merge00 f2, f3, f2 // M02, M12
        stfs       c_zero, 44(dst)
        psq_st     f2, 32(dst), 0, 0

        psq_l      f1, 32(src),  0, 0
        ps_merge00 f4, f1, c_zero // M20, 0
        psq_st     f4, 8(dst),  0, 0

        ps_merge10 f5, f1, c_zero // M21, 0
        psq_st     f5, 24(dst), 0, 0

        lfs  f3, 40(src) // M22
        stfs f3, 40(dst)
    }
    // clang-format on
}

asm BOOL PSMTXInverse(register const Mtx src, register Mtx dst) {
    /**
     * A = [ a b c X ]
     *     [ d e f Y ]
     *     [ g h i Z ]
     *
     * inv(A) = 1/det(A) * trans(A)
     */

    /**
     * Calculate determinant of upper-left 3x3 submatrix:
     * det(A) = g*(b*f-e*c)+d*(h*c-b*i)+a*(e*i-h*f)
     */

    // clang-format off
    psq_l      f0, 0(src),  1, 0 // a
    psq_l      f1, 4(src),  0, 0 // b, c
    psq_l      f2, 16(src), 1, 0 // d
    ps_merge10 f6, f1, f0        // c, a
    psq_l      f3, 20(src), 0, 0 // e, f
    psq_l      f4, 32(src), 1, 0 // g
    ps_merge10 f7, f3, f2        // f, d
    psq_l      f5, 36(src), 0, 0 // h, i

    ps_mul     f11, f3, f6      // e*c,         f*a
    ps_mul     f13, f5, f7      // h*f,         i*d
    ps_merge10 f8,  f5, f4      // i,           g
    ps_msub    f11, f1, f7, f11 // b*f-e*c,     c*d-f*a
    ps_mul     f12, f1, f8      // b*i,         c*g
    ps_msub    f13, f3, f8, f13 // e*i-h*f,     f*g-i*d
    ps_mul     f10, f3, f4      // e*g,         f
    ps_msub    f12, f5, f6, f12 // h*c-b*i,     i*a-c*g
    ps_mul     f9,  f0, f5      // a*h,         i
    ps_mul     f8,  f1, f2      // b*d,         c
    ps_sub     f6,  f6, f6      // Get 0.0f
    ps_msub    f10, f2, f5, f10 // d*h-e*g,     i-f
    ps_mul     f7,  f0, f13     // a*(e*i-h*f), f*g-i*d
    ps_msub    f9,  f1, f4,  f9 // b*g-a*h,     c-i

    ps_madd    f7,  f2, f12, f7 // d*(h*c-b*i)+a*(e*i-h*f), junk
    ps_msub    f8,  f0, f3,  f8 // (a*e-b*d), junk

    // g*(b*f-e*c)+d*(h*c-b*i)+a*(e*i-h*f), junk
    ps_madd    f7,  f4, f11, f7

    // Check determinant
    ps_cmpo0 cr0, f7, f6
    bne not_singular

    // Inverse does not exist
    li r3, FALSE
    blr

not_singular:
    /**
     * Calculate inverse matrix
     * inv(A) = 1/det(A) * trans(A)
     */
    fres       f0,  f7
    ps_add     f6,  f0, f0
    ps_mul     f5,  f0, f0
    ps_nmsub   f0,  f7, f5, f6
    lfs        f1,  12(src)
    ps_muls0   f13, f13, f0
    lfs        f2,  28(src)
    ps_muls0   f12, f12, f0
    lfs        f3,  44(src)
    ps_muls0   f11, f11, f0
    ps_merge00 f5,  f13, f12
    ps_muls0   f10, f10, f0
    ps_merge11 f4,  f13, f12
    ps_muls0   f9,  f9,  f0
    psq_st     f5,  0(dst),  0, 0
    ps_mul     f6,  f13, f1
    psq_st     f4,  16(dst), 0, 0
    ps_muls0   f8,  f8,  f0
    ps_madd    f6,  f12, f2, f6
    psq_st     f10, 32(dst), 1, 0
    ps_nmadd   f6,  f11, f3, f6
    psq_st     f9,  36(dst), 1, 0
    ps_mul     f7,  f10, f1
    ps_merge00 f5,  f11, f6
    psq_st     f8,  40(dst), 1, 0
    ps_merge11 f4,  f11, f6
    psq_st     f5,  8(dst),  0, 0
    ps_madd    f7,  f9, f2, f7
    psq_st     f4,  24(dst), 0, 0
    ps_nmadd   f7,  f8, f3, f7
    li         r3,  TRUE // Inverse exists
    psq_st     f7,  44(dst), 1, 0

    blr
    // clang-format on
}

asm void PSMTXInvXpose(register const Mtx src, register Mtx dst) {
    // clang-format off
    nofralloc

    psq_l f0, 0(src), 1, 0
    psq_l f1, 4(src), 0, 0
    psq_l f2, 16(src), 1, 0
    ps_merge10 f6, f1, f0
    psq_l f3, 20(src), 0, 0
    psq_l f4, 32(src), 1, 0
    ps_merge10 f7, f3, f2
    psq_l f5, 36(src), 0, 0
    ps_mul f11, f3, f6
    ps_merge10 f8, f5, f4
    ps_mul f13, f5, f7
    ps_msub f11, f1, f7, f11
    ps_mul f12, f1, f8
    ps_msub f13, f3, f8, f13
    ps_msub f12, f5, f6, f12
    ps_mul f10, f3, f4
    ps_mul f9, f0, f5
    ps_mul f8, f1, f2
    ps_msub f10, f2, f5, f10
    ps_msub f9, f1, f4, f9
    ps_msub f8, f0, f3, f8
    ps_mul f7, f0, f13
    ps_sub f1, f1, f1
    ps_madd f7, f2, f12, f7
    ps_madd f7, f4, f11, f7
    ps_cmpo0 cr0, f7, f1
    bne lbl_800E7A78
    li r3, 0
    blr

lbl_800E7A78:
    fres f0, f7
    psq_st f1, 12(dst), 1, 0
    ps_add f6, f0, f0
    ps_mul f5, f0, f0
    psq_st f1, 28(dst), 1, 0
    ps_nmsub f0, f7, f5, f6
    psq_st f1, 44(dst), 1, 0
    ps_muls0 f13, f13, f0
    ps_muls0 f12, f12, f0
    ps_muls0 f11, f11, f0
    psq_st f13, 0(dst), 0, 0
    psq_st f12, 16(dst), 0, 0
    ps_muls0 f10, f10, f0
    ps_muls0 f9, f9, f0
    psq_st f11, 32(dst), 0, 0
    psq_st f10, 8(dst), 1, 0
    ps_muls0 f8, f8, f0
    li r3, 1
    psq_st f9, 24(dst), 1, 0
    psq_st f8, 40(dst), 1, 0

    blr
    // clang-format on
}

void PSMTXRotRad(Mtx mtx, f32 angle, char axis) {
    f32 sintheta = sinf(angle);
    f32 costheta = cosf(angle);
    PSMTXRotTrig(mtx, sintheta, costheta, axis);
}

void PSMTXRotTrig(register Mtx mtx, register f32 sintheta,
                  register f32 costheta, register char axis) {
    register f32 c_zero = 0.0f;
    register f32 c_one = 1.0f;
    register f32 work0, work1;

    // clang-format off
    asm {
        // Force single precision
        frsp sintheta, sintheta
        frsp costheta, costheta

        // Negate sin(theta)
        ps_neg work0, sintheta

        // Convert to lowercase
        ori axis, axis, 0x20

        // Build rotation matrix
        cmplwi axis, 'x'
        beq rotX
        cmplwi axis, 'y'
        beq rotY
        cmplwi axis, 'z'
        beq rotZ
        blr

    rotX:
        /**
         * [ 1     0           0      0 ]
         * [ 0 cos(theta) -sin(theta) 0 ]
         * [ 0 sin(theta)  cos(theta) 0 ]
         */
        psq_st c_one,  0(mtx),  1, 0
        psq_st c_zero, 4(mtx),  0, 0
        psq_st c_zero, 12(mtx), 0, 0
        psq_st c_zero, 28(mtx), 0, 0
        psq_st c_zero, 44(mtx), 1, 0

        ps_merge00 work1, sintheta, costheta
        psq_st     work1, 36(mtx), 0, 0

        ps_merge00 c_one, costheta, work0
        psq_st     c_one, 20(mtx), 0, 0

        blr
        
    rotY:
        /**
         * [  cos(theta) 0 sin(theta) 0 ]
         * [      0      1     0      0 ]
         * [ -sin(theta) 0 cos(theta) 0 ]
         */
        psq_st c_zero, 24(mtx), 0, 0

        ps_merge00 work1, costheta, c_zero
        psq_st     work1, 0(mtx),  0, 0
        psq_st     work1, 40(mtx), 0, 0

        ps_merge00 c_one, c_zero, c_one
        psq_st     c_one, 16(mtx), 0, 0
        
        ps_merge00 work0,  work0,    c_zero
        ps_merge00 c_zero, sintheta, c_zero

        psq_st c_zero, 8(mtx),  0, 0
        psq_st work0,  32(mtx), 0, 0

        blr

    rotZ:
        /**
         * [ cos(theta) -sin(theta) 0 0 ]
         * [ sin(theta)  cos(theta) 0 0 ]
         * [     0           0      1 0 ]
         */
        psq_st c_zero, 8(mtx),  0, 0
        psq_st c_zero, 24(mtx), 0, 0
        psq_st c_zero, 32(mtx), 0, 0

        ps_merge00 work1, sintheta, costheta
        psq_st     work1, 16(mtx), 0, 0

        ps_merge00 work0, costheta, work0
        psq_st     work0, 0(mtx), 0, 0

        ps_merge00 c_one, c_one, c_zero
        psq_st     c_one, 40(mtx), 0, 0
    }
    // clang-format on
}

static void __PSMTXRotAxisRadInternal(register Mtx mtx, register f32 sintheta,
                                      register f32 costheta,
                                      register const Vec* axis) {
    ;
    ;
}

void PSMTXRotAxisRad(Mtx mtx, const Vec* axis, f32 angle) {
    f32 sintheta = sinf(angle);
    f32 costheta = cosf(angle);
    __PSMTXRotAxisRadInternal(mtx, sintheta, costheta, axis);
}

void PSMTXTrans(register Mtx mtx, register f32 tx, register f32 ty,
                register f32 tz) {
    /**
     * [ 1 0 0 X ]
     * [ 0 1 0 Y ]
     * [ 0 0 1 Z ]
     */

    register f32 c_zero = 0.0f;
    register f32 c_one = 1.0f;

    // clang-format off
    asm {
        stfs   tx,     12(mtx)
        stfs   ty,     28(mtx)
        psq_st c_zero, 4(mtx),  0, 0
        psq_st c_zero, 32(mtx), 0, 0
        stfs   c_zero, 16(mtx)
        stfs   c_one,  20(mtx)
        stfs   c_zero, 24(mtx)
        stfs   c_one,  40(mtx)
        stfs   tz,     44(mtx)
        stfs   c_one,  0(mtx)
    }
    // clang-format on
}

asm void PSMTXTransApply(register const Mtx src, register Mtx dst,
                         register f32 tx, register f32 ty, register f32 tz) {
    /**
     * [ M0X M0Y M0Z M0V+TX ]
     * [ M1X M1Y M1Z M1V+TY ]
     * [ M2X M2Y M2Z M2V+TZ ]
     */

    // clang-format off
    nofralloc 

    // Load row  0 X/Y
    psq_l f4, 0(src),  0, 0
    // Force single precision
    frsp tx, tx
    // Load row 0 Z/V
    psq_l f5, 8(src),  0, 0
    // Force single precision
    frsp ty, ty
    // Load row 1 Z/V
    psq_l f7, 24(src), 0, 0
    // Force single precision
    frsp tz, tz

    // Load row 2 Z/V
    psq_l f8, 40(src), 0, 0
    // Store row 0 X/Y
    psq_st f4, 0(dst), 0, 0
    // Apply row 0 translation
    ps_sum1 f5, tx, f5, f5 // M0Z, TX+M0V

    // Load row 1 X/Y
    psq_l f6, 16(src), 0, 0
    // Store row 0 translation
    psq_st f5, 8(dst), 0, 0
    // Apply row 1 translation
    ps_sum1 f7, ty, f7, f7 // M1Z, TY+M1V

    // Load row 2 X/Y
    psq_l f9, 32(src), 0, 0
    // Store row 1 X/Y
    psq_st f6, 16(dst), 0, 0
    // Apply row 2 translation
    ps_sum1 f8, tz, f8, f8 // M2Z, TZ+M2V

    // Store row 1 translation
    psq_st f7, 24(dst), 0, 0
    // Store row 2 X/Y
    psq_st f9, 32(dst), 0, 0
    // Store row 2 translation
    psq_st f8, 40(dst), 0, 0

    blr
    // clang-format on
}

void PSMTXScale(register Mtx mtx, register f32 sx, register f32 sy,
                register f32 sz) {
    /**
     * [ SX 0 0 0 ]
     * [ 0 SY 0 0 ]
     * [ 0 0 SZ 0 ]
     */

    register f32 c_zero = 0.0f;

    // clang-format off
    asm {
        stfs   sx,     0(mtx)
        psq_st c_zero, 4(mtx),  0, 0
        psq_st c_zero, 12(mtx), 0, 0
        stfs   sy,     20(mtx)
        psq_st c_zero, 24(mtx), 0, 0
        psq_st c_zero, 32(mtx), 0, 0
        stfs   sz,     40(mtx)
        stfs   c_zero, 44(mtx)
    }
    // clang-format on
}

asm void PSMTXScaleApply(register const Mtx src, register Mtx dst,
                         register f32 sx, register f32 sy, register f32 sz) {
    /**
     * [ M00 M01 M02 M03 ]   [ SX ]
     * [ M10 M11 M12 M13 ] * [ SY ]
     * [ M20 M21 M22 M23 ]   [ SZ ]
     */

    // clang-format off
    nofralloc

    frsp  sx, sx
    psq_l f4, 0(src), 0, 0
    frsp  sy, sy
    psq_l f5, 8(src), 0, 0
    frsp  sz, sz

    ps_muls0 f4, f4, sx
    psq_l    f6, 16(src), 0, 0
    ps_muls0 f5, f5, sx

    psq_l    f7, 24(src), 0, 0
    ps_muls0 f6, f6, sy
    psq_l    f8, 32(src), 0, 0
    psq_st   f4, 0(dst),  0, 0
    ps_muls0 f7, f7, sy
    psq_l    f2, 40(src), 0, 0
    psq_st   f5, 8(dst),  0, 0

    ps_muls0 f8, f8, sz
    psq_st   f6, 16(dst), 0, 0
    ps_muls0 f2, f2, sz
    psq_st   f7, 24(dst), 0, 0
    psq_st   f8, 32(dst), 0, 0
    psq_st   f2, 40(dst), 0, 0

    blr
    // clang-format on
}

void PSMTXQuat(register Mtx mtx, register const Quaternion* quat) {
    register f32 c_one = 1.0f;

    // clang-format off
    asm {
        fsubs f0, c_one, c_one // Get 0.0f
        psq_l f4, 0(quat), 0, 0
        psq_l f5, 8(quat), 0, 0

        ps_mul f6, f4, f4
        ps_merge10 f9, f4, f4
        ps_madd f8, f5, f5, f6
        ps_muls1 f10, f5, f5
        fadds f2, c_one, c_one
        ps_sum0 f3, f8, f8, f8
        ps_mul f7, f5, f5
        ps_madd f12, f4, f9, f10
        fres f13, f3
        ps_nmsub f3, f3, f13, f2
        ps_muls1 f11, f9, f5
        ps_msub f10, f4, f9, f10
        ps_mul f3, f13, f3
        ps_madds0 f9, f4, f5, f11
        ps_sum1 f8, f7, f8, f6
        fmuls f3, f3, f2
        ps_nmsub f11, f11, f2, f9
        ps_sum0 f6, f6, f6, f6
        ps_mul f9, f9, f3
        ps_mul f11, f11, f3
        ps_nmsub f8, f8, f3, c_one
        ps_mul f12, f12, f3
        ps_mul f10, f10, f3
        ps_merge10 f7, f11, f0
        ps_merge00 f5, f12, f8
        ps_merge10 f4, f8, f10
        ps_merge01 f13, f11, f9
        ps_nmsub f6, f6, f3, c_one

        psq_st f0,  12(mtx), 1, 0
        psq_st f0,  44(mtx), 1, 0
        psq_st f9,  8(mtx),  1, 0
        psq_st f7,  24(mtx), 0, 0
        psq_st f5,  16(mtx), 0, 0
        psq_st f6,  40(mtx), 1, 0
        psq_st f4,  0(mtx),  0, 0
        psq_st f13, 32(mtx), 0, 0
    }
    // clang-format on
}

void C_MTXLookAt(Mtx mtx, const Vec* campos, const Vec* camup,
                 const Vec* target) {
    Vec forward;
    Vec right;
    Vec up;

    forward.x = campos->x - target->x;
    forward.y = campos->y - target->y;
    forward.z = campos->z - target->z;

    PSVECNormalize(&forward, &forward);
    PSVECCrossProduct(camup, &forward, &right);

    PSVECNormalize(&right, &right);
    PSVECCrossProduct(&forward, &right, &up);

    // clang-format off
    mtx[0][0] = right.x;
    mtx[0][1] = right.y;
    mtx[0][2] = right.z;
    mtx[0][3] = -(campos->x * right.x +
                  campos->y * right.y +
                  campos->z * right.z);

    mtx[1][0] = up.x;
    mtx[1][1] = up.y;
    mtx[1][2] = up.z;
    mtx[1][3] = -(campos->x * up.x +
                  campos->y * up.y +
                  campos->z * up.z);

    mtx[2][0] = forward.x;
    mtx[2][1] = forward.y;
    mtx[2][2] = forward.z;
    mtx[2][3] = -(campos->x * forward.x +
                  campos->y * forward.y +
                  campos->z * forward.z);
    // clang-format on
}

void C_MTXLightFrustum(Mtx mtx, f32 t, f32 b, f32 l, f32 r, f32 near,
                       f32 scaleS, f32 scaleT, f32 transS, f32 transT) {
    f32 invrange;

    invrange = 1.0f / (r - l);
    mtx[0][0] = 2 * near * invrange * scaleS;
    mtx[0][1] = 0.0f;
    mtx[0][2] = invrange * (r + l) * scaleS - transS;
    mtx[0][3] = 0.0f;

    invrange = 1.0f / (t - b);
    mtx[1][0] = 0.0f;
    mtx[1][1] = 2 * near * invrange * scaleT;
    mtx[1][2] = invrange * (t + b) * scaleT - transT;
    mtx[1][3] = 0.0f;

    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = -1.0f;
    mtx[2][3] = 0.0f;
}

void C_MTXLightPerspective(Mtx mtx, f32 fovy, f32 aspect, f32 scaleS,
                           f32 scaleT, f32 transS, f32 transT) {
    f32 rad, cot;

    rad = M_PI / 180.0f * (0.5f * fovy);
    cot = 1.0f / tanf(rad);

    mtx[0][0] = cot / aspect * scaleS;
    mtx[0][1] = 0.0f;
    mtx[0][2] = -transS;
    mtx[0][3] = 0.0f;

    mtx[1][0] = 0.0f;
    mtx[1][1] = cot * scaleT;
    mtx[1][2] = -transT;
    mtx[1][3] = 0.0f;

    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = -1.0f;
    mtx[2][3] = 0.0f;
}

void C_MTXLightOrtho(Mtx mtx, f32 t, f32 b, f32 l, f32 r, f32 scaleS,
                     f32 scaleT, f32 transS, f32 transT) {
    f32 invrange;

    invrange = 1.0f / (r - l);
    mtx[0][0] = 2.0f * invrange * scaleS;
    mtx[0][1] = 0.0f;
    mtx[0][2] = 0.0f;
    mtx[0][3] = invrange * -(r + l) * scaleS + transS;

    invrange = 1.0f / (t - b);
    mtx[1][0] = 0.0f;
    mtx[1][1] = 2.0f * invrange * scaleT;
    mtx[1][2] = 0.0f;
    mtx[1][3] = invrange * -(t + b) * scaleT + transT;

    mtx[2][0] = 0.0f;
    mtx[2][1] = 0.0f;
    mtx[2][2] = 0.0f;
    mtx[2][3] = 1.0f;
}
