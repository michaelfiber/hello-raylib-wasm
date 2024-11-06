#!/usr/bin/env bash

set -Eeuo pipefail

# Install and activate emsdk
mkdir emsdk
wget https://github.com/emscripten-core/emsdk/archive/refs/heads/main.zip
unzip -d emsdk main.zip
rm main.zip

pushd emsdk/emsdk-main > /dev/null
./emsdk install 2ce4170cef5ce46f337f9fd907b614a8db772c7d
./emsdk activate 2ce4170cef5ce46f337f9fd907b614a8db772c7d
popd > /dev/null

# Download unzip WASM nightly build of libraylib.a and raylib.h into src/external
mkdir -p src/external

pushd src/external > /dev/null
wget -qO- https://michaelfiber.github.io/raylib-nightly-wasm/raylib.wasm.tar.gz | tar xvz
popd > /dev/null

