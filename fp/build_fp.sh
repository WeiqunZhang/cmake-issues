cmake -S . \
-B build.fp \
-DCMAKE_PREFIX_PATH=build.amrex \
-DAMReX_CUDA=YES \
-DAMReX_CUDA_ARCH="6.0" \
-DAMReX_CUDA_FASTMATH=ON \
-DCMAKE_CXX_FLAGS="-Ofast -DNDEBUG" \
-DCMAKE_CXX_FLAGS_RELEASE="-Ofast -DNDEBUG" \
-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON

cmake --build build.fp --config Release -j6
