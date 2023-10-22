# Hello raylib WASM
This is my basic starter project that has a script to grab raylib night WASM build and a Makefile to generate a WASM build of the project.  

It assumes emsdk has been cloned and activated and `emcc` is in your path (or you did `source path_to_emsdk/emsdk_env.sh`)

## Using this
- Run `update-raylib.sh` to download a nightly WASM build of libraylib.a and the most recent raylib.h and place them in ./external
- Make sure emsdk is set up and activated and `emcc` is in your path
- Run `make index.html`
- Check the build directory for the index files of your project.