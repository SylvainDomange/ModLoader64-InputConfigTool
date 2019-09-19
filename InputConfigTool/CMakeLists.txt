cmake_minimum_required(VERSION 3.7)

set(SRC
src/ImGuiContextWrapper.h
src/ImGuiUtil.h
src/InputWindow.cpp
src/InputWindow.h
src/main.cpp
src/MappingUtil.cpp
src/MappingUtil.h
src/Mupen.cpp
src/Mupen.h
src/sdl_key_converter.cpp
src/sdl_key_converter.h
src/SDLWrapper.h
src/stb_image.h
src/stb_impl.cpp
)

find_package(SDL2 REQUIRED)
find_package(fmt REQUIRED)

set(OpenGL_GL_PREFERENCE "LEGACY")
find_package(OpenGL REQUIRED)

add_executable(InputConfigTool WIN32 ${SRC})

set_property(TARGET InputConfigTool PROPERTY CXX_STANDARD 17)
set_property(TARGET InputConfigTool PROPERTY CMAKE_CXX_STANDARD_REQUIRED ON)

target_include_directories(InputConfigTool PRIVATE
	"include"
	imgui 
	${SDL2_INCLUDE_DIRS} 
	${FMT_INCLUDE_DIRS} 
	"${PROJECT_SOURCE_DIR}/thirdparty/include" 
	)

target_link_libraries(InputConfigTool PRIVATE imgui ${SDL2_LIBRARIES} ${FMT_LIBRARIES} ${OPENGL_LIBRARIES})

if(WIN32)
	target_compile_definitions(InputConfigTool PRIVATE -D_CRT_SECURE_NO_WARNINGS)
endif()

if(UNIX)
	set(GCC_COVERAGE_LINK_FLAGS "-no-pie")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}")
endif()
