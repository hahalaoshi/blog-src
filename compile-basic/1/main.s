	.file	"main.c"
	.text
	.globl	global_val
	.data
	.align 4
	.type	global_val, @object
	.size	global_val, 4
global_val:
	.long	1
	.comm	uinit_val,4,4
	.section	.rodata
.LC0:
	.string	"a = %d\n"
.LC1:
	.string	"b = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$3, %esi
	movl	$2, %edi
	call	add@PLT
	movl	%eax, -8(%rbp)
	movl	$4, %esi
	movl	$5, %edi
	call	sub@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	uninit_local_val.2261
	.comm	uninit_local_val.2261,4,4
	.data
	.align 4
	.type	local_val.2260, @object
	.size	local_val.2260, 4
local_val.2260:
	.long	2
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
