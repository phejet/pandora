# CMakeLists.txt for tests
add_executable(test_mylib test_mylib.cpp)
target_include_directories(test_mylib PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(test_mylib PRIVATE mylib)
add_test(NAME test_mylib COMMAND test_mylib)
