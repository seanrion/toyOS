all:bootpack.o,naskfunc.o
naskfunc.o:naskfunc.asm
	nasm -f macho32 naskfunc.asm
bootpack.o:bootpack.c
	gcc -m32 -nostartfiles -c bootpack.c



