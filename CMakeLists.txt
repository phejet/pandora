cmake_minimum_required(VERSION 3.10)
project(mylib VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Always generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(mylib STATIC src/test_lib.cpp)
target_include_directories(mylib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
set_target_properties(mylib PROPERTIES PUBLIC_HEADER include/mylib/mylib.h)

# Enable testing
include(CTest)
enable_testing()

# Add test executable
add_executable(test_add tests/test_add.cpp)
target_include_directories(test_add PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(test_add PRIVATE mylib)
add_test(NAME test_add COMMAND test_add)
