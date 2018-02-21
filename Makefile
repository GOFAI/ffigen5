CC = /usr/local/bin/clang-devel
LIBDIR = /usr/local/llvm-devel/lib
INCDIR = /usr/local/llvm-devel/include

all:
	$(CC) -g -L $(LIBDIR) -lclang -I $(INCDIR) source/ffigen5.c -o ffigen5

