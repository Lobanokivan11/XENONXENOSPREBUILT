sudo apt update
sudo apt install ninja-build clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang
mkdir prebuilt-linux
cd XenonRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl -DCMAKE_C_COMPILER=clang-cl -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
cp XenonRecomp\XenonRecomp.exe ..\..\prebuilt-linux
cp XenonAnalyse\XenonAnalyse.exe ..\..\prebuilt-linix
cd ..\..\XenosRecomp
cmake -DCMAKE_CXX_COMPILER=clang-cl -DCMAKE_C_COMPILER=clang-cl -DCMAKE_BUILD_TYPE=Release -G Ninja -S . -B build
cd build
ninja
cp XenosRecomp\XenosRecomp.exe ..\..\prebuilt-linux
7z a -tzip ..\..\prebuilt-linux.zip ..\..\prebuilt-linux
