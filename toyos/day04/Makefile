.PHONY:all
all: asmhead.sys end ipl10.img
	objcopy -j .text -j .data -O binary end.exe end.sys
	copy /b asmhead.sys+end.sys com.sys 
	del asmhead.sys
	del bootpack.o
	del end.exe
	del end.sys
	del naskfunc.o
ipl10.img:
	nasm -o ipl10.img ipl10.asm
asmhead.sys:
	nasm -o asmhead.sys asmhead.asm
end:bootpack.o naskfunc.o
	gcc -nostartfiles -T linker.script -o end bootpack.o naskfunc.o
naskfunc.o:naskfunc.asm
	nasm -f coff naskfunc.asm
bootpack.o:bootpack.c
	gcc -c -m32 bootpack.c
