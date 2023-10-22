#!/usr/bin/env bash

set -Eeuo pipefail

# download the nightly raylib tar.
pushd ./external > /dev/null
wget -qO- https://michaelfiber.github.io/raylib-nightly-wasm/raylib.wasm.tar.gz | tar xvz
popd > /dev/null