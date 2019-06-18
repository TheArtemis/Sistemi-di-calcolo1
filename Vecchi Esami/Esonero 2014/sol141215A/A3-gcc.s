	.file	"A3.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	jle	.L4
	movl	$0, %eax
.L3:
	addl	%edx, %eax
	subl	$1, %edx
	jne	.L3
	rep ret
.L4:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (GNU) 4.9.1 20140903 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
