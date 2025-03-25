CPP = gcc -E
GCC = gcc -m32 -g     
AS = as --32          
LD = ld -m elf_i386   

SRC = main.c
I_FILE = main.i
S_FILE = main.s
O_FILE = main.o
EXE = demo_gcc

all: build run

build: build_o

build_s: build_i

build_o: build_s

build_i:

clean:
	
run: build
	