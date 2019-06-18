	.file	"A8.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	12(%esp), %eax
	movl	(%edx,%eax,4), %eax
	movl	8(%esp), %ecx
	addl	(%edx,%ecx,4), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (GNU) 4.9.1 20140903 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
