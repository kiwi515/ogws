#include "math.h"
#include "ef_util.h"
#include "math_types.h"

namespace nw4r
{	
	namespace ef
	{
		// https://decomp.me/scratch/2MeK5
		u16 UtlistToArray(const ut::List * list, void ** array, int size) {
			void* node = NULL;
			u16 index = 0;

			while (node = List_GetNext(list, node), node != NULL) {
				array[index] = node;
				index++;
				if (index >= size) {
					break;
				}
			}
			
			return index;
		}

		math::VEC3* Rotation2VecY(const math::VEC3& vec, math::VEC3* rotated_vec) {
			f32 X1 = vec.mCoords.x;
			f32 sin_x = sin(X1);
			f32 X2 = vec.mCoords.x;
			f32 cos_x = cos(X2);
			f32 Y1 = vec.mCoords.y;
			f32 sin_y = sin(Y1);
			f32 Y2 = vec.mCoords.y;
			f32 cos_y = cos(Y2);
			f32 Z1 = vec.mCoords.z;
			f32 sin_z = sin(Z1);
			f32 Z2 = vec.mCoords.z;
			f32 cos_z = cos(Z2);
			
			rotated_vec->mCoords.x = cos_z * (sin_x * sin_y) - (cos_x * sin_z);
			rotated_vec->mCoords.y = sin_z * (sin_x * sin_y) + (cos_x * cos_z);
			rotated_vec->mCoords.z = sin_x * cos_y;
			
			return rotated_vec;
		}
	}
}