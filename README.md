# ModLoader64-InputConfigTool
Controllers configuration app for mupen64plus based on SDL2 for use with [ModLoader64](https://github.com/hylian-modding/ModLoader64/).

### Building for Windows x86 with Visual Studio 2019 Community using CMake

```cmake
# Call MSBuild command prompt
"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsMSBuildCmd.bat"
# Build
BuildPackageWin32
# Run
cd dist\x86-windows
InputConfigTool
```

### Building for Linux x64 using CMake
```cmake
# Install dependencies
sudo apt install cmake build-essential libsdl2-dev libfmt-dev libgl1-mesa-dev
# Build
./BuildPackageLinux.sh
# Run
cd dist/x64-linux
./InputConfigTool
```
