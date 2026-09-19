#ifndef RP_GRAPHICS_MODEL_RECORD_H
#define RP_GRAPHICS_MODEL_RECORD_H
#include <Pack/types_pack.h>

#include <nw4r/math.h>

//! @addtogroup rp_graphics
//! @{

// Forward declarations
class RPGrpModel;
class RPGrpModelRecorderG3D;

/******************************************************************************
 *
 * RPGrpModelRecordJoint
 *
 ******************************************************************************/

struct RPGrpModelRecordJoint {
    nw4r::math::MTX34 transform; // at 0x0
};

/******************************************************************************
 *
 * RPGrpModelRecordFrame
 *
 ******************************************************************************/

struct RPGrpModelRecordFrame {
    nw4r::math::MTX34 transform;    // at 0x0
    RPGrpModelRecordJoint* pJoints; // at 0x30
};

/******************************************************************************
 *
 * RPGrpModelRecorder
 *
 ******************************************************************************/

/**
 * @brief Interface for model recorders
 */
class RPGrpModelRecorder {
protected:
    u16 mFrameNum;                   // at 0x0
    RPGrpModelRecordFrame* mpFrames; // at 0x4

public:
    /**
     * @brief Constructor
     *
     * @param frameNum Number of frames to capture
     */
    explicit RPGrpModelRecorder(u16 frameNum) DECOMP_DONT_INLINE;

    /**
     * @brief Destructor
     */
    virtual ~RPGrpModelRecorder() {} // at 0x8

    virtual void CopyFrame(RPGrpModelRecordFrame* pDst,
                           const RPGrpModelRecordFrame* pSrc) = 0; // at 0xC

    virtual void ApplyFrame() const = 0; // at 0x10

    virtual void ClearFrame(RPGrpModelRecordFrame* pFrame) const = 0; // at 0x10

    void Clear();

    u16 GetFrameNum() const {
        return mFrameNum;
    }

    RPGrpModelRecordFrame* GetFrame(int idx) const {
        return &mpFrames[idx];
    }

private:
    void Alloc(u16 frameNum);
};

/******************************************************************************
 *
 * RPGrpModelRecord
 *
 ******************************************************************************/

/**
 * @brief Model transformation history for nw4r::g3d
 */
class RPGrpModelRecord {
private:
    u16 mFlags; // at 0x0
    f32 unk4;
    RPGrpModelRecorderG3D* mpModelRecorder; // at 0x8
    nw4r::math::MTX34 unkC;
    RPGrpModelRecordJoint* mpJoints; // at 0x3C
    u16 unk40;

public:
    /**
     * @brief Constructor
     *
     * @param frameNum Number of frames to capture
     * @param pModel Owner model
     */
    RPGrpModelRecord(u16 frameNum, RPGrpModel* pModel);

    /**
     * @brief Destructor
     */
    virtual ~RPGrpModelRecord() {} // at 0x8

    /**
     * @brief Clears the recorded data
     */
    void Clear();

    /**
     * @brief Records the current frame
     *
     * @param pModel Model to record
     */
    void Calc(RPGrpModel* pModel);
};

/******************************************************************************
 *
 * RPGrpModelRecorderG3D
 *
 ******************************************************************************/

/**
 * @brief Model recorder implementation for nw4r::g3d
 */
class RPGrpModelRecorderG3D : public RPGrpModelRecorder {
private:
    u16 mJointNum; // at 0xC

public:
    RPGrpModelRecorderG3D(u16 frameNum, u16 jointNum);

    virtual void
    CopyFrame(RPGrpModelRecordFrame* pDst,
              const RPGrpModelRecordFrame* pSrc) override; // at 0xC

    virtual void ApplyFrame() const override; // at 0x10

    virtual void
    ClearFrame(RPGrpModelRecordFrame* pFrame) const override; // at 0x10

    u16 GetJointNum() const {
        return mJointNum;
    }
};

//! @}

#endif
