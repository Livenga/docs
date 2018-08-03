	.file	"main.c"
	.text
	.globl	c_status
	.section	.rodata
	.align 4
	.type	c_status, %object
	.size	c_status, 4

c_status:
	.long	1
	.globl	status
	.data
	.align 4
	.type	status, @object
	.size	status, 4

status:
	.long	119
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.1.1 20180531"
	.section	.note.GNU-stack,"",@progbits
