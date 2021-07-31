cmake -S ../../amrex \
-B build.amrex \
-DAMReX_FORTRAN=OFF \
-DAMReX_GPU_BACKEND=CUDA \
-DAMReX_CUDA_ARCH="6.0" \
-DAMReX_MPI=OFF \
-DAMReX_LINEAR_SOLVERS=OFF \
-DAMReX_SPACEDIM=3 \
-DAMReX_CUDA_FASTMATH=ON \
-DCMAKE_CXX_FLAGS="-Ofast -DNDEBUG" \
-DCMAKE_CXX_FLAGS_RELEASE="-Ofast -DNDEBUG" \
-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
-DCMAKE_BUILD_TYPE=Release

cmake --build build.amrex --config Release -j6
