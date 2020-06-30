.PHONY:all
all:a.exe hello.o hello2.o crack2.o crack1.exe hello3.exe bug1.exe bug2.exe bug3.exe hello4.exe winhelo.exe winhelo2.exe
winhelo.exe:winhelo.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
winhelo2.exe:winhelo2.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
bug1.exe:bug1.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
bug2.exe:bug2.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
bug3.exe:bug3.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
hello3.exe:hello3.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^ 
hello4.exe:hello4.o a_nask.o
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
hello4.o:hello4.c
	gcc -c $^
bug1.o:bug1.c
	gcc -c $^
bug2.o:bug2.c
	gcc -c $^
bug3.o:bug3.c
	gcc -c $^
winhelo.o:winhelo.c
	gcc -c $^
winhelo2.o:winhelo2.c
	gcc -c $^