FROM ubuntu
WORKDIR /opt

RUN apt update
RUN apt install -y cmake ninja-build clang gcc-aarch64-linux-gnu

CMD cmake -B aarch64_build -G Ninja -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++; \
    cmake --build aarch64_build