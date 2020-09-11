cmake_minimum_required(VERSION 3.18)

project(TestThrust LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(cmake/solve_dependencies.cmake)

add_executable(test)
target_sources(test PRIVATE test.cu)
target_link_libraries(test PRIVATE Thrust)
