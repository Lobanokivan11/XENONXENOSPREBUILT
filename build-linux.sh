sudo apt update
sudo apt install ninja-build clang-19 clang-tools-19 clang-19-doc libclang-common-19-dev libclang-19-dev libclang1-19 clang-format-19 python3-clang-19 clangd-19 clang-tidy-19 libllvm-19-ocaml-dev libllvm19 llvm-19 llvm-19-dev llvm-19-doc llvm-19-examples llvm-19-runtime
sudo update-alternatives --slave /usr/bin/clang-cl clang-cl /usr/bin/clang-cl-19
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
