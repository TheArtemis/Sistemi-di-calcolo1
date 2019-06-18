	.globl	_f
_f: movl	8(%esp), %ecx
	movl	12(%esp), %eax
	movl	4(%esp), %edx
	movl	(%edx,%eax,4), %eax
	addl	(%edx,%ecx,4), %eax
	ret
