.PHONY:all clean
clean:all
	del asmhead.sys
	del bootpack.o
	del end.exe
	del end.sys
	del naskfunc.o
	del hankaku.asm
	del hankaku.o
all: asmhead.sys end ipl10.img 
	objcopy -S -j .text -j .data -j .rdata -j .idata -O binary end.exe end.sys
	copy /b asmhead.sys+end.sys com.sys 
ipl10.img:
	nasm -o ipl10.img ipl10.asm
asmhead.sys:
	nasm -o asmhead.sys asmhead.asm
end:bootpack.o naskfunc.o hankaku.o
	gcc -nostdinc -nostdlib -nostartfiles -T linker.script -o end bootpack.o naskfunc.o hankaku.o  -I..\win32 -L..\win32 -l:golibc.lib 
naskfunc.o:naskfunc.asm
	nasm -f coff naskfunc.asm
bootpack.o:bootpack.c
	gcc -c -m32 bootpack.c
hankaku.o:hankaku.txt
	.\txt2asm.exe hankaku.txt hankaku.asm _hankaku
	nasm -f coff hankaku.asm