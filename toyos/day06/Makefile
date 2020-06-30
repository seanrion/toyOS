.PHONY:all clean
clean:all
	del asmhead.sys
	del end.sys
	del hankaku.asm
	del *.o
all: asmhead.sys end ipl10.img 
	objcopy -O binary end.exe end.sys
	copy /b asmhead.sys+end.sys com.sys 
ipl10.img:
	nasm -o ipl10.img ipl10.asm
asmhead.sys:
	nasm -o asmhead.sys asmhead.asm
end:bootpack.o naskfunc.o int.o dsctbl.o graphic.o  hankaku.o
	gcc -pie -nostdinc -nostdlib -e _HariMain -T linker.script -o $@ $^ -I..\win32 -L..\win32 -l:golibc.lib 
hankaku.o:hankaku.txt
	.\txt2asm.exe hankaku.txt hankaku.asm _hankaku
	nasm -f elf32 hankaku.asm
naskfunc.o:naskfunc.asm
	nasm -f elf32 naskfunc.asm
%.o:%.c
	gcc -fPIE -m32 -c $^