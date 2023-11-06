# Hello raylib WASM
This is my basic starter project that has a script to grab raylib night WASM build and a Makefile to generate a WASM build of the project.  

**NOTE**: Only tested on Linux.

## Installation
Run `install-linux.sh` to:
- download, install and activate EMSDK in the `./emsdk` directory (It uses the main branch from the repo)
- download a nightly WASM build of libraylib.a and raylib.h into `./src/external`

## Building
Enter the `src` directory and then run `make index.html` to build a WASM version of the program. The files will end up in `./src/build/`.

You will need to [update](src/Makefile#L4) `src/Makefile` to include any C files you need compiled.  

The contents of the `./src/resources` directory are automatically packed up and bundled with the WASM build.