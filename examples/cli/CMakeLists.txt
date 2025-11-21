# ============================================================================
# Example: How to integrate wgslpp into your C++ CMake project
# ============================================================================

cmake_minimum_required(VERSION 3.17)
project(wgslpp-example CXX)


# ----------------------------------------------------------------------------
# Method 1: add_subdirectory
# ----------------------------------------------------------------------------
add_subdirectory(../.. build)

# ----------------------------------------------------------------------------
# Method 2: FetchContent
# ----------------------------------------------------------------------------
# include(FetchContent)
#
# FetchContent_Declare(
#     wgslpp
#     GIT_REPOSITORY https://github.com/reeselevine/wgsl-cpp-pp.git
#     GIT_TAG main
# )
#
# FetchContent_MakeAvailable(wgslpp)

# ----------------------------------------------------------------------------
# Method 3: find_package
# ----------------------------------------------------------------------------
# find_package(wgslpp REQUIRED)

add_executable(wgslpp-cli main.cpp)
target_link_libraries(wgslpp-cli PRIVATE wgslpp)
target_compile_features(wgslpp-cli PRIVATE cxx_std_17)