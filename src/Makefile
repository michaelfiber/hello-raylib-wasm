.ONESHELL:

# Add any project C files here to have them built as part of the project.
PROJECT_SOURCE_FILES ?= main.c

# This is hardcoded to the path that `install-linux.sh` and `install-windows.bat` 
# place emsdk files to avoid needing to set up the environment to build.
CC=../emsdk/emsdk-main/upstream/emscripten/emcc 

# This is the directory within `src` where the finished files will be placed.
DEST=./build

CFLAGS=-I./external -s USE_GLFW=3 --preload-file resources --shell-file ./minshell.html
MAKE=make

OBJ=$(patsubst %.c, %.o, $(PROJECT_SOURCE_FILES)) ./external/libraylib.a

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

index.html: $(OBJ)
	mkdir -p $(DEST)
	$(CC) -o $(DEST)/$@ $^ $(CFLAGS)

clean:
	rm *.o
	rm -rf ./build