gcc -m32 -nostartfiles -c bootpack.c
nasm -f coff naskfunc.asm
nasm -o asmhead.sys asmhead.asm
gcc -m32 -nostartfiles -o test.sys naskfunc.o bootpack.o
copy /b asmhead.sys+test.sys end.sys 
pause


	