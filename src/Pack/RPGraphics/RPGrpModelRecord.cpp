#include <Pack/RPGraphics.h>

/******************************************************************************
 *
 * RPGrpModelRecorder
 *
 ******************************************************************************/

/**
 * @brief Constructor
 *
 * @param frameNum Number of frames to capture
 */
RPGrpModelRecorder::RPGrpModelRecorder(u16 frameNum) {
    mFrameNum = frameNum;
    mpFrames = NULL;

    Alloc(frameNum);
}

void RPGrpModelRecorder::Alloc(u16 frameNum) {
    mpFrames = new RPGrpModelRecordFrame[frameNum];
}

void RPGrpModelRecorder::Clear() {
    for (int i = 0; i < GetFrameNum(); i++) {
        ClearFrame(&mpFrames[i]);
    }
}

/******************************************************************************
 *
 * RPGrpModelRecord
 *
 ******************************************************************************/

/**
 * @brief Constructor
 *
 * @param frameNum Number of frames to capture
 * @param pModel Owner model
 */
RPGrpModelRecord::RPGrpModelRecord(u16 frameNum, RPGrpModel* pModel) {
    u16 jointNum = pModel->GetJointNum() == 0 ? 1 : pModel->GetJointNum();

    mpModelRecorder = new RPGrpModelRecorderG3D(frameNum, jointNum);
    mpJoints = new RPGrpModelRecordJoint[jointNum];
}

/**
 * @brief Clears the recorded data
 */
void RPGrpModelRecord::Clear() {
    for (int i = 0; i < mpModelRecorder->GetJointNum(); i++) {
        nw4r::math::MTX34Identity(&mpJoints[i].transform);
    }

    nw4r::math::MTX34Identity(&unkC);

    mpModelRecorder->Clear();

    mFlags = 0;
    unk4 = 0.0f;
    unk40 = 0;
}

/**
 * @brief Records the current frame
 *
 * @param pModel Model to record
 */
void RPGrpModelRecord::Calc(RPGrpModel* pModel) {
    u16 jointNum = pModel->GetJointNum() == 0 ? 1 : pModel->GetJointNum();

    // if ()
}

/******************************************************************************
 *
 * RPGrpModelRecorderG3D
 *
 ******************************************************************************/

RPGrpModelRecorderG3D::RPGrpModelRecorderG3D(u16 frameNum, u16 jointNum)
    : RPGrpModelRecorder(frameNum), mJointNum(jointNum) {

    for (int i = 0; i < mFrameNum; i++) {
        mpFrames[i].pJoints = new RPGrpModelRecordJoint[mJointNum];

        for (int j = 0; j < mJointNum; j++) {
            nw4r::math::MTX34Identity(&mpFrames[i].pJoints[j].transform);
        }
    }
}

void RPGrpModelRecorderG3D::CopyFrame(RPGrpModelRecordFrame* pDst,
                                      const RPGrpModelRecordFrame* pSrc) {
    for (int i = 0; i < mJointNum; i++) {
        nw4r::math::MTX34Copy(&pDst->pJoints[i].transform,
                              &pSrc->pJoints[i].transform);
    }

    nw4r::math::MTX34Copy(&pDst->transform, &pSrc->transform);
}

void RPGrpModelRecorderG3D::ClearFrame(RPGrpModelRecordFrame* pFrame) const {
    for (int i = 0; i < mJointNum; i++) {
        nw4r::math::MTX34Identity(&pFrame->pJoints[i].transform);
    }

    nw4r::math::MTX34Identity(&pFrame->transform);
}
