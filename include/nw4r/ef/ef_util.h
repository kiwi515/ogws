#ifndef NW4R_EF_UTIL
#define NW4R_EF_UTIL
#include "types_nw4r.h"
#include "ut_list.h"

namespace nw4r
{
	namespace ef
	{
		typedef void (* Action)(void *, u32);
		
		u16 UtlistToArray(const ut::List *, void **, int);
		math::VEC3* Rotation2VecY(const math::VEC3&, math::VEC3*);
		void GetDirMtxY(math::MTX34 *, const math::VEC3 &);
		void MtxGetRotationMtx(const math::MTX34 &, math::MTX34 *);
		void MtxGetRotation(const math::MTX34 &, math::VEC3 *);
		void MtxGetTranslate(const math::MTX34 &, math::VEC3 *);
		void MtxGetScale(const math::MTX34 &, math::VEC3 *);
	}
}

#endif