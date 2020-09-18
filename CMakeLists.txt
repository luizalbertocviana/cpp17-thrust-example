cmake_minimum_required(VERSION 3.18)

project(TestThrust LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(test)
target_sources(test PRIVATE test.cu)
set_target_properties(test PROPERTIES CUDA_SEPARABLE_COMPILATION ON)
