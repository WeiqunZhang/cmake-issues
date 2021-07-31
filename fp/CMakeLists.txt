cmake_minimum_required(VERSION 3.19)

# Define project and languages
if (AMReX_CUDA)
  project(fillpatch C CXX CUDA)
else ()
  project(fillpatch C CXX)
endif ()

# Find AMReX
find_package(AMReX REQUIRED)

# List of source files under "src" folder
set(_sources main.cpp)
list(APPEND _sources f.cpp)
list(TRANSFORM _sources PREPEND "src/")

# Define executable name
add_executable( fp )

# Assign source files to create executable
target_sources( fp PRIVATE ${_sources} )

# Link exe with AMReX lib
target_link_libraries(fp PRIVATE AMReX::amrex)

target_include_directories(fp PRIVATE src)

if (AMReX_CUDA)
  set_target_properties( fp
    PROPERTIES
    CUDA_SEPARABLE_COMPILATION ON
    )

  set_source_files_properties(${_sources} PROPERTIES LANGUAGE CUDA )
endif ()
