cur_dir=$(pwd)
cd ..
cd ptsrc
cd coderlinux

ssl coder.ssl
make all

cd "$cur_dir"
