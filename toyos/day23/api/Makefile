INC = ../../win32
.PHONY:all
all:winhelo.exe winhelo2.exe winhelo3.exe stars.exe stars2.exe lines.exe walk.exe
walk.exe:walk.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script -I$(INC) -L$(INC) -l:golibc.lib 
lines.exe:lines.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script -I$(INC) -L$(INC) -l:golibc.lib 
stars2.exe:stars2.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script -I$(INC) -L$(INC) -l:golibc.lib 
stars.exe:stars.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script -I$(INC) -L$(INC) -l:golibc.lib 
winhelo.exe:winhelo.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script
winhelo2.exe:winhelo2.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script
winhelo3.exe:winhelo3.o a_nask.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T linker.script
a_nask.o:a_nask.asm
	nasm -f elf32 a_nask.asm
%.o:%.c
	gcc -c $^