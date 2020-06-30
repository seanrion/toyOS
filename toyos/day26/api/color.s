	.file	"color.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "color\0"
	.text
	.globl	_HariMain
	.def	_HariMain;	.scl	2;	.type	32;	.endef
_HariMain:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	call	_api_initmalloc
	movl	$23616, (%esp)
	call	_api_malloc
	movl	%eax, -20(%ebp)
	movl	$LC0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$164, 8(%esp)
	movl	$144, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_api_openwin
	movl	%eax, -24(%ebp)
	movl	$0, -16(%ebp)
	jmp	L2
L5:
	movl	$0, -12(%ebp)
	jmp	L3
L4:
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	-28(%ebp), %ecx
	movl	$799063683, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movl	-32(%ebp), %ecx
	movl	$799063683, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %ebx
	movl	-36(%ebp), %ecx
	movl	$799063683, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ebx, %eax
	leal	16(%eax), %ebx
	movl	-12(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-16(%ebp), %eax
	leal	28(%eax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$4, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%ebx, %edx
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
L3:
	cmpl	$127, -12(%ebp)
	jle	L4
	addl	$1, -16(%ebp)
L2:
	cmpl	$127, -16(%ebp)
	jle	L5
	movl	$156, 16(%esp)
	movl	$136, 12(%esp)
	movl	$28, 8(%esp)
	movl	$8, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_api_refreshwin
	movl	$1, (%esp)
	call	_api_getkey
	call	_api_end
	nop
	addl	$68, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_api_initmalloc;	.scl	2;	.type	32;	.endef
	.def	_api_malloc;	.scl	2;	.type	32;	.endef
	.def	_api_openwin;	.scl	2;	.type	32;	.endef
	.def	_api_refreshwin;	.scl	2;	.type	32;	.endef
	.def	_api_getkey;	.scl	2;	.type	32;	.endef
	.def	_api_end;	.scl	2;	.type	32;	.endef
