sudo apt install git git-lfs
git lfs install
git clone https://github.com/hedge-dev/XenonRecomp.git
cd XenonRecomp
git submodule update --init --recursive
cd ..
git clone https://github.com/hedge-dev/XenosRecomp.git
cd XenosRecomp
git submodule update --init --recursive
cd ..