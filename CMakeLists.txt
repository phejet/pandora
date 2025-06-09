cmake_minimum_required(VERSION 3.10)
project(mylib VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Always generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

# if(CMAKE_EXPORT_COMPILE_COMMANDS)
#   set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES 
#       ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
# endif()

# Enable testing
include(CTest)
enable_testing()

add_subdirectory(src)
add_subdirectory(tests)

# Install the main headers from the include directory
install(DIRECTORY include/ DESTINATION include)
