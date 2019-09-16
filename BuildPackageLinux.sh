rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
cd ..
mkdir dist
rm -rf dist/x64-linux
mkdir dist/x64-linux
cp build/InputConfigTool/InputConfigTool dist/x64-linux/InputConfigTool
cp -r data dist/x64-linux/data
