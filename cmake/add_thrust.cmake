CPMAddPackage(
  NAME Thrust
  GITHUB_REPOSITORY thrust/thrust
  GIT_TAG caf543a7ae1da7196dd1b074096ae0ca336b2b46
)

find_package(Thrust REQUIRED CONFIG)
thrust_create_target(Thrust)

target_include_directories(Thrust INTERFACE ${CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
