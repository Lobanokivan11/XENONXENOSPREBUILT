wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc
sudo apt update
sudo apt-get install libllvm-21-ocaml-dev libllvm21 llvm-21 llvm-21-dev llvm-21-doc llvm-21-examples llvm-21-runtime clang-21 clang-tools-21 clang-21-doc libclang-common-21-dev libclang-21-dev libclang1-21 clang-format-21 python3-clang-21 clangd-21 clang-tidy-21 libclang-rt-21-dev libpolly-21-dev libfuzzer-21-dev lldb-21 lld-21 libc++-21-dev libc++abi-21-dev libomp-21-dev libclc-21-dev libunwind-21-dev libmlir-21-dev mlir-21-tools libbolt-21-dev bolt-21 flang-21 libclang-rt-21-dev-wasm32 libclang-rt-21-dev-wasm64 libc++-21-dev-wasm32 libc++abi-21-dev-wasm32 libclang-rt-21-dev-wasm32 libclang-rt-21-dev-wasm64 libllvmlibc-21-dev
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
