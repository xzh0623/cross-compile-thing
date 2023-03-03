# Cross Compile aarch64 on x86_64 Linux

Using an Ubuntu docker to cross compile because yes glibc being too new is a thing

## Compile

Install `docker` and `docker-compose` then run `docker-compose up`

## Execution

Install `qemu-base`, `qemu-aarch64-static`

> These are Arch package names and IDK if they exist on other distros

```
qemu-aarch64-static -L /usr/aarch64-linux-gnu ./aarch64_build/CrossCompile
```