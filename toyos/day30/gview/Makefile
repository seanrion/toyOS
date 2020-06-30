INC = ../../win32 
API = ../apilib
APIH= ../
gview.exe:gview.o bmp.obj jpeg.o
	gcc -nostdinc -nostdlib -e _HariMain -o $@ $^  -T ../apilinker.script -I$(INC) -I$(APIH) -L$(INC) -l:golibc.lib  -L$(API) -l:apilib.lib 
%.obj:%.asm
	nasm -f win32 $<
%.o:%.c
	gcc -nostdinc -nostdlib -Wl,--stack=0x800000 -c $^ -I$(INC) -I$(APIH) -L$(API) -l:apilib.lib -L$(INC) -l:golibc.lib  -L$(API) -l:apilib.lib