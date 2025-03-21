wget -qO - https://apt.llvm.org/llvm.sh | sudo bash -s 20 all
sudo apt update
sudo apt-get install ninja-build cmake ld
mkdir prebuilt-linux
cd XenonRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl-20 -DCMAKE_C_COMPILER=clang-cl-20 -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
cp XenonRecomp/XenonRecomp.exe ../../prebuilt-linux
cp XenonAnalyse/XenonAnalyse.exe ../../prebuilt-linix
cd ../../XenosRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl-20 -DCMAKE_C_COMPILER=clang-cl-20 -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
cp XenosRecomp/XenosRecomp.exe ../../prebuilt-linux
7z a -tzip ../../prebuilt-linux.zip ../../prebuilt-linux
