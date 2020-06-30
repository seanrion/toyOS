VPATH = src
SRC = src

.PHONY:all clean
all: asmhead.sys end ipl10.img 
	objcopy -O binary $(SRC)/end.exe $(SRC)/end.sys
	copy /b $(SRC)\asmhead.sys+$(SRC)\end.sys com.sys 
ipl10.img:ipl10.asm
	nasm -o ipl10.img $<
asmhead.sys:asmhead.asm
	nasm -o asmhead.sys asmhead.asm
end:bootpack.o naskfunc.o int.o dsctbl.o graphic.o  hankaku.o fifo.o
	gcc -nostdinc -nostdlib -e _HariMain -T linker.script -o $(SRC)/$@ $^ -I..\win32 -L..\win32 -l:golibc.lib 
hankaku.o:hankaku.txt
	.\txt2asm\txt2asm.exe $(SRC)/hankaku.txt $(SRC)/hankaku.asm _hankaku
	nasm -f elf32 $(SRC)/hankaku.asm
naskfunc.o:naskfunc.asm
	nasm -f elf32 $<
%.o:%.c
	gcc -m32 -c $^ -o $(SRC)/$@
