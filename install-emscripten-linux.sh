#!/usr/bin/env bash

set -Eeuo pipefail

git clone https://github.com/emscripten-core/emsdk.git

pushd emsdk > /dev/null

./emsdk install latest
./emsdk activate latest

popd > /dev/null