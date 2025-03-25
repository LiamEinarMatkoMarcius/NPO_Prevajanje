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
#gcc -Wall -Wextra -Werror -Wpedantic main.c 
	$(LD) -o $(EXE) /usr/lib32/crt1.o /usr/lib32/crti.o $(O_FILE) -lc /usr/lib32/crtn.o -dynamic-linker /lib/ld-linux.so.2	
#$(LD) -m elf_i386 -e main -o $(EXE) $(O_FILE) -lc -dynamic-linker /lib/ld-linux.so.2 

build_s: build_i
	$(GCC) -S -o $(S_FILE) $(I_FILE)

build_o: build_s
	$(AS) --32 -o $(O_FILE) $(S_FILE)

build_i:
	$(CPP) $(SRC) -o $(I_FILE)

clean:
	rm -f $(I_FILE) $(S_FILE) $(O_FILE) $(EXE)

run: build
	./$(EXE)
	