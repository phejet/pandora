# FindMyLib.cmake - CMake module to find and import mylib

# Locate the library and headers
find_path(MyLib_INCLUDE_DIR NAMES mylib/mylib.h)
find_library(MyLib_LIBRARY NAMES mylib libmylib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MyLib
    REQUIRED_VARS MyLib_LIBRARY MyLib_INCLUDE_DIR
    HANDLE_COMPONENTS)

if(MyLib_FOUND)
    set(MyLib_LIBRARIES ${MyLib_LIBRARY})
    set(MyLib_INCLUDE_DIRS ${MyLib_INCLUDE_DIR})

    if(NOT TARGET MyLib::MyLib)
        add_library(MyLib::MyLib UNKNOWN IMPORTED)
        set_target_properties(MyLib::MyLib PROPERTIES
            IMPORTED_LOCATION "${MyLib_LIBRARY}"
            INTERFACE_INCLUDE_DIRECTORIES "${MyLib_INCLUDE_DIR}"
        )
    endif()
endif()
