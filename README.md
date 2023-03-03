# Cross Compile aarch64 on x86_64 Linux

All package names are based on Arch Linux

## Build

Install `cmake`, `ninja`, `aarch64-linux-gnu-gcc`, `clang`

```
cmake -B build -G Ninja -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake --build build
```

## Execution

Install `qemu-base`, `qemu-aarch64-static`

```
qemu-aarch64-static -L /usr/aarch64-linux-gnu ./build/CrossCompile
```