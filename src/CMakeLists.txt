# CMakeLists.txt for mylib library
cmake_minimum_required(VERSION 3.10)

add_library(mylib STATIC mylib.cpp)
target_include_directories(mylib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)
set_target_properties(mylib PROPERTIES PUBLIC_HEADER ../include/mylib/mylib.h)

# Install the library and headers
install(TARGETS mylib
    ARCHIVE DESTINATION lib
    PUBLIC_HEADER DESTINATION include/mylib
)
