cmake_minimum_required(VERSION 3.8)

set(SRC
src/imconfig.h
src/imgui.cpp
src/imgui.h
src/imgui_demo.cpp
src/imgui_draw.cpp
src/imgui_impl_opengl2.cpp
src/imgui_impl_opengl2.h
src/imgui_impl_sdl.cpp
src/imgui_impl_sdl.h
src/imgui_internal.h
src/imgui_stdlib.cpp
src/imgui_stdlib.h
src/imgui_widgets.cpp
src/imstb_rectpack.h
src/imstb_textedit.h
src/imstb_truetype.h
)

find_package(SDL2 REQUIRED)

add_library(imgui STATIC ${SRC})

target_include_directories(imgui 
	INTERFACE src 
	PRIVATE ${SDL2_INCLUDE_DIRS}
	)
