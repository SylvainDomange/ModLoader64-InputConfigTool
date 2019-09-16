if(WIN32)
	set(FMT_INCLUDE_DIRS
		"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/include"
		)

	if(CMAKE_BUILD_TYPE STREQUAL "Debug")
		find_library(FMT_LIBRARIES NAMES fmtd HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/debug/lib"
			)
	else()
		find_library(FMT_LIBRARIES NAMES fmt HINTS 
			"${PROJECT_SOURCE_DIR}/thirdparty/x86-windows/lib"
			)
	endif()
else()
	set(FMT_INCLUDE_DIRS
		"/usr/include"
	)

	find_library(FMT_LIBRARIES NAMES fmt HINTS
		"/usr/lib/x86_64-linux-gnu"
	)
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(fmt DEFAULT_MSG FMT_INCLUDE_DIRS FMT_LIBRARIES)

mark_as_advanced(FMT_INCLUDE_DIRS FMT_LIBRARIES)
