choco install ninja -y
choco install cmake -y
choco install pkgconfiglite -y
choco install llvm -y
mkdir prebuilt-windows
cd XenonRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl -DCMAKE_C_COMPILER=clang-cl -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
copy XenonRecomp\XenonRecomp.exe ..\..\prebuilt-windows
copy XenonAnalyse\XenonAnalyse.exe ..\..\prebuilt-windows
cd ..\..\XenosRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl -DCMAKE_C_COMPILER=clang-cl -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
copy XenosRecomp\XenosRecomp.exe ..\..\prebuilt-windows
7z a -tzip ..\..\prebuilt-windows.zip ..\..\prebuilt-windows
