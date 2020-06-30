.PHONY:all
all:a.exe hello.o hello2.o crack2.o crack1.exe hello3.exe
hello3.exe:hello3.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
crack1.exe:crack1.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
a.exe:a.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
a_nask.o:a_nask.asm
	nasm -f elf32 a_nask.asm
a.o:a.c
	gcc -c $^
hello.o:hello.asm
	nasm -o $@ $^
hello2.o:hello2.asm
	nasm -o $@ $^
crack2.o:crack2.asm
	nasm -o $@ $^
crack1.o:crack1.c
	gcc -c $^
hello3.o:hello3.c
	gcc -c $^
