CC=gcc
ASMBIN=nasm

all : asm cc link
asm :
	$(ASMBIN) -o func2b.o -f elf -l func2b.lst func2b.asm
cc :
	$(CC) -m32 -c -g -O0 main.c &> errors.txt
link :
	$(CC) -m32 -o test -lstdc++ main.o func2b.o
clean :
	rm *.o
	rm test
	rm errors.txt
	rm func2b.lst
