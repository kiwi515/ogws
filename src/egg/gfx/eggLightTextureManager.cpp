#pragma use_lmw_stmw on

#include "eggAssert.h"
#include "eggLightTextureManager.h"
#include "eggLightManager.h"
#include "eggLightTexture.h"
#include "eggLightObject.h"
#include "eggStateGX.h"
#include "eggDrawGX.h"
#include "eggModelEx.h"
#include "eggTextureBuffer.h"
#include "math_types.h"
#include "g3d_resmat.h"
#include <RevoSDK/GX/GXPixel.h>
#include <RevoSDK/GX/GXTexture.h>
#include <string.h>

namespace EGG
{
    template <>
    const char *IBinary<LightTextureManager>::sExtension = "blmap";

    using namespace nw4r;

    LightTextureManager::LightTextureManager(LightManager *pManager) :
        mFlags(0x78),
        mTexNum(0),
        mppLightTextures(NULL),
        mpLightManager(pManager),
        mDrawFlags(0),
        mLightObjNum(LIGHT_OBJ_MAX),
        mppLightObjs(NULL)
    {
        #line 36
        EGG_ASSERT(pManager);

        mppLightTextures = new LightTexture *[LIGHT_TEX_MAX];
        for (int i = 0; i < LIGHT_TEX_MAX; i++)
        {
            mppLightTextures[i] = NULL;
        }

        mppLightObjs = new LightObj *[mLightObjNum];
        for (int i = 0; i < mLightObjNum; i++)
        {
            mppLightObjs[i] = NULL;
        }
    }

    u16 LightTextureManager::createTexture(const char *name)
    {
        #line 78
        EGG_ASSERT(mTexNum < getMax());

        const int texNum = mTexNum;
        for (int i = 0; i < texNum; i++)
        {
            if (strcmp(name, mppLightTextures[i]->getName()) == 0) return i;
        }

        mppLightTextures[mTexNum] = new LightTexture(mTexNum, name, this);
        mppLightTextures[mTexNum]->configure();
        
        const u16 index = mTexNum;
        mTexNum++;
        return index;
    }

    // https://decomp.me/scratch/JMHpy
    #ifdef __DECOMP_NON_MATCHING
    int LightTextureManager::replaceModelTexture(int index, ModelEx *pMdl) const
    {
        #line 121
        EGG_ASSERT(pMdl);
        EGG_ASSERT(0 <= index && index < mTexNum);

        TextureReplaceResult result;
        GXTexObj texObj;
        
        mppLightTextures[index]->getTexObj(&texObj);
        int ret = pMdl->replaceTexture(mppLightTextures[index]->getName(), texObj.mFlags, false, &result, 0xFF, false);
        pMdl->replaceTexture(mppLightTextures[index]->getName(), texObj.mFlags, false, NULL, 0, true);

        for (int i = 0; i < (u16)ret; i++)
        {
            u16 matIndex = result.data[i].s[0];
            u8 texCoordId = result.data[i].b[3];
            
            g3d::ResTexSrt srt = pMdl->getResMat(matIndex).GetResTexSrt();
            #line 138
            EGG_ASSERT(srt.IsValid());
            srt.SetMapMode(texCoordId, 1, -1, -1);

            g3d::ResMatTexCoordGen gen = pMdl->getResMat(matIndex).GetResMatTexCoordGen();
            #line 138
            EGG_ASSERT(gen.IsValid());

            GXTexGenType type;
            GXTexGenSrc src;
            u8 b;
            u32 l;

            gen.GXGetTexCoordGen2((GXTexCoordID)texCoordId, &type, &src, &b, &l);
            gen.GXSetTexCoordGen2((GXTexCoordID)texCoordId, GX_TEX_GEN_TYPE_0, GX_TEX_GEN_SRC_1, 1, l);
            gen.DCStore(false);
        }
        
        return ret;
    }
    #else
    #error This file has yet to be decompiled accurately. Use "eggLightTextureManager.s" instead.
    #endif

    int LightTextureManager::getTextureIndex(const char *name) const
    {
        const int texNum = mTexNum;
        for (int i = 0; i < texNum; i++)
        {
            if (strcmp(name, mppLightTextures[i]->getName()) == 0) return i;
        }

        return -1;
    }

    void LightTextureManager::correctLightObject()
    {
        int numLight = 0;
        for (int i = 0; i < mpLightManager->GetNum(); i++)
        {
            LightObj *p_obj = mpLightManager->GetLightObj(i);
            #line 234
            EGG_ASSERT(p_obj);

            if (p_obj->getFlags() & 0x1
                && p_obj->getFlags() & 0x20)
            {
                mppLightObjs[numLight] = p_obj;
                if (++numLight >= mLightObjNum) break;
            }
        }

        for (int i = numLight; i < mLightObjNum; i++)
        {
            mppLightObjs[i] = NULL;
        }
    }

    void LightTextureManager::frameReset()
    {
        correctLightObject();
        mDrawFlags = 0;
        mFlags &= ~0x2;
    }

    // https://decomp.me/scratch/rqOkd
    #ifdef __DECOMP_NON_MATCHING
    void LightTextureManager::draw(LightManager *pManager, const Screen::DataEfb &efb, f32 x1, f32 y1, f32 x2, f32 y2)
    {
        u8 view = 1 << pManager->GetCurrentView();
        bool setPixelFmt = mFlags >> 5 & 1;
        if (!(mFlags & 0x10) || (mDrawFlags & view) || mTexNum == 0) return;

        if (mFlags & 0x40)
        {
            x1 = 0.0f;
            y1 = StateGX::getEfbHeight();
            x2 = StateGX::getEfbWidth();
            y2 = 528 - StateGX::getEfbHeight();
        }

        mDrawFlags |= view;

        union
        {
            u8 color;
            bool bColor;
        };
        color = StateGX::getCache().colorUpdate;
        StateGX::GXSetColorUpdate_(true);

        union
        {
            u8 alpha;
            bool bAlpha;
        };
        alpha = StateGX::getCache().alphaUpdate;
        StateGX::GXSetAlphaUpdate_(false);

        // TODO
        
        LightTexture::initDrawSetting(x1, y1, x2, y2);
        
        TextureBuffer *texBuf = NULL;
        
        u16 x, y, w, h;
        LightTexture::getDrawSetting(&x, &y, &w, &h, mTexNum);
        w += (w & 3);
        h += (h & 3);

        if (!(mFlags & 0x40) && (mFlags & 0x4))
        {
            texBuf = TextureBuffer::alloc(w, h, GX_TEX_FMT_6);
            texBuf->capture(x, y, false, -1);
        }

        if (setPixelFmt) StateGX::GXSetPixelFmt_(GX_PIXEL_FMT_0, 0);

        for (int i = 0; i < mTexNum; i++)
        {
            mpLightTextures[i]->draw();
        }

        for (int i = 0; i < mTexNum; i++)
        {
            bool b = setPixelFmt && (mFlags & 0x8);
            mpLightTextures[i]->capture(b);
        }

        if (setPixelFmt)
        {
            StateGX::GXSetPixelFmt_(StateGX::getDefaultPixelFormat(), 
                StateGX::getDefaultPixelFormatArg2());
        }
        
        if (!(mFlags & 0x40))
        {   
            union
            {
                u8 color2;
                bool bColor2;
            };
            color2 = StateGX::getCache().colorUpdate;
            StateGX::GXSetColorUpdate_(true);

            union
            {
                u8 alpha2;
                bool bAlpha2;
            };
            alpha2 = StateGX::getCache().alphaUpdate;
            StateGX::GXSetAlphaUpdate_(true);

            if ((mFlags & 0x8) || texBuf != NULL)
            {
                math::MTX34 proj;
                C_MTXOrtho(proj, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f);
                StateGX::GXSetProjection_(proj, 1);
                StateGX::GXSetViewport_(x, y, w, h, 0.0f, 1.0f);
                StateGX::GXSetScissor_(x, y, w, h);
                StateGX::GXSetScissorBoxOffset_(0, 0);

                math::MTX34 forDL;
                math::MTX34Identity(&forDL);

                if (texBuf != NULL)
                {
                    DrawGX::BeginDrawScreen(true, true, false);
                    DrawGX::SetBlendMode(DrawGX::BLEND_9);
                    GXSetBlendMode(0, 4, 5, 0);
                    texBuf->load(GX_TEX_MAP_ID_0);
                    DrawGX::DrawDL(DrawGX::DL_16, forDL, DrawGX::scColorWhite);
                    texBuf->free();
                }
                else
                {
                    #line 382
                    EGG_ASSERT(isEnableClearWorkSpace());

                    if (setPixelFmt)
                    {
                        DrawGX::BeginDrawScreen(true, false, true);
                        DrawGX::SetBlendMode(DrawGX::BLEND_9);
                        DrawGX::DrawDL(DrawGX::DL_17, forDL, StateGX::getDefaultTexColor());   
                    }
                }
            }

            StateGX::GXSetAlphaUpdate_(bAlpha2);
            StateGX::GXSetColorUpdate_(bColor2);
        }

        GXInvalidateTexAll();
        StateGX::GXSetAlphaUpdate_(bAlpha);
        StateGX::GXSetColorUpdate_(bColor);
    }
    #else
    #error This file has yet to be decompiled accurately. Use "eggLightTextureManager.s" instead.
    #endif

    const char *LightTextureManager::GetBinaryType() const
    {
        return "LMAP";
    }

    #ifdef __DECOMP_NON_MATCHING
    void LightTextureManager::SetBinaryInner(const IBinary::Bin& bin)
    {
    }
    #else
    #error This file has yet to be decompiled accurately. Use "eggLightTextureManager.s" instead.
    #endif

    #ifdef __DECOMP_NON_MATCHING
    void LightTextureManager::GetBinaryInner(IBinary::Bin *bin) const
    {
    }
    #else
    #error This file has yet to be decompiled accurately. Use "eggLightTextureManager.s" instead.
    #endif

    u8 LightTextureManager::GetVersion() const
    {
        return 0;
    }
}