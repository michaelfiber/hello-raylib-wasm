.ONESHELL:

CC=emcc
CFLAGS=-I./external -s USE_GLFW=3 
MAKE=make
DEPS=
OBJ=main.o ./external/libraylib.a
DEST=./build

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

index.html: $(OBJ)
	mkdir -p $(DEST)
	$(CC) -o $(DEST)/$@ $^ $(CFLAGS)
	$(MAKE) clean

clean:
	rm *.o