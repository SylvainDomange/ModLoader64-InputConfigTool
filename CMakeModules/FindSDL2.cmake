if (WIN32)
	set(SDL2_INCLUDE_DIRS
		"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/include"
		"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/include/SDL2"
		)

	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
		find_library(SDL2_LIBRARY NAMES SDL2d HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/debug/lib"
			)
		find_library(SDL2MAIN_LIBRARY NAMES SDL2maind HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/debug/lib/manual-link"
			)
	else()
		find_library(SDL2_LIBRARY NAMES SDL2 HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/lib"
			)
		find_library(SDL2MAIN_LIBRARY NAMES SDL2main HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/lib/manual-link"
			)
	endif()
else()
	set(SDL2_INCLUDE_DIRS
		"/usr/include"
		"/usr/include/SDL2"
		)

	find_library(SDL2_LIBRARY NAMES SDL2 HINTS 
		"/usr/lib/x86_64-linux-gnu"
		)
	find_library(SDL2MAIN_LIBRARY NAMES SDL2main HINTS 
		"/usr/lib/x86_64-linux-gnu"
		)
endif()

set(SDL2_LIBRARIES 
	${SDL2_LIBRARY}
	${SDL2MAIN_LIBRARY}
	)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(SDL2 DEFAULT_MSG SDL2_INCLUDE_DIRS SDL2_LIBRARIES)

mark_as_advanced(SDL2_INCLUDE_DIRS SDL2_LIBRARIES)
