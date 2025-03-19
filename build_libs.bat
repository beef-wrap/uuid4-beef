mkdir libs
mkdir libs\debug
mkdir libs\release

clang -c -O0 -g -gcodeview -o uuid4.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall uuid4\src\uuid4.c
move uuid4.lib libs\debug

clang -c -O3 -o uuid4.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall uuid4\src\uuid4.c
move uuid4.lib libs\release