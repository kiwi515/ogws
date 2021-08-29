#include "g3d_init.h"
#include "g3d_state.h"
#include "ut_LockedCache.h"
#include <RevoSDK/OS/OS.h>
#include <RevoSDK/VI/vi.h>
#include <RevoSDK/GX/GXFrameBuf.h>

namespace
{
    const char * NW4R_G3D_Version = "<< NW4R    - G3D \tfinal   build: Jun  8 2007 11:16:25 (0x4199_60831) >>";
}

namespace nw4r
{
    namespace g3d
    {
        using namespace ut;

        void G3dInit(bool doLock)
        {
            OSRegisterVersion(NW4R_G3D_Version);

            if (doLock) LC::Enable();
            else LC::Disable();

            InitFastCast();

            GXRenderModeObj* rmo;
            switch(VIGetTvFormat())
            {
                case VI_NTSC:
                    rmo = &GXNtsc480IntDf;
                    break;
                case VI_PAL:
                    rmo = &GXPal528IntDf;
                    break;
                case VI_EURGB60:
                    rmo = &GXEurgb60Hz480IntDf;
                    break;
                case VI_MPAL:
                    rmo = &GXMpal480IntDf;
                    break;
                default:
                    rmo = &GXNtsc480IntDf;
                    break;
            }

            G3DState::SetRenderModeObj(*rmo);
        }

        void G3dReset()
        {
            G3DState::Invalidate(0x7ff);
        }
    }
}