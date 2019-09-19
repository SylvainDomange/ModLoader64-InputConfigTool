cmake_minimum_required(VERSION 3.7)

project("ModLoader64-InputConfigTool")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMakeModules")

add_subdirectory("imgui")
add_subdirectory("InputConfigTool")
