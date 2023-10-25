mkdir src\external
mkdir emsdk

cscript windows-download.vbs https://github.com/emscripten-core/emsdk/archive/refs/heads/main.zip main.zip
cscript windows-download.vbs https://michaelfiber.github.io/raylib-nightly-wasm/libraylib.a src\external\libraylib.a
cscript windows-download.vbs https://michaelfiber.github.io/raylib-nightly-wasm/raylib.h src\external\raylib.h

powershell Expand-Archive main.zip -DestinationPath emsdk
del main.zip

emsdk\emsdk-main\emsdk.bat install latest
emsdk\emsdk-main\emsdk.bat activate latest