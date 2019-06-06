
CC = /usr/local/opt/llvm/bin/clang
LIBDIR = /usr/local/opt/llvm/lib
INCDIR = /usr/local/opt/llvm/include

all:
	$(CC) -g -L $(LIBDIR) -lclang -I $(INCDIR) source/ffigen5.c -o ffigen5

