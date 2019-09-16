rmdir /Q/S build
mkdir build
cd build
cmake .. -DCMAKE_GENERATOR_PLATFORM=Win32 -DCMAKE_BUILD_TYPE=Release
msbuild ModLoader64-InputConfigTool.sln -target:InputConfigTool /property:Configuration=Release
cd ..
mkdir dist
rmdir /Q/S dist\x86-windows
mkdir dist\x86-windows
copy /b build\InputConfigTool\Release\InputConfigTool.exe dist\x86-windows\InputConfigTool.exe
copy /b thirdparty\x86-windows\bin\fmt.dll dist\x86-windows\fmt.dll
copy /b thirdparty\x86-windows\bin\SDL2.dll dist\x86-windows\SDL2.dll
robocopy data dist\x86-windows\data /E /njh /njs /ndl /nc /ns
