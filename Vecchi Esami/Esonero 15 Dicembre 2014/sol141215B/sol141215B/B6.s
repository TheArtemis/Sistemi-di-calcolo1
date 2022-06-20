	.globl	_f
_f: movl	4(%esp), %edx   // d
    movl	8(%esp), %ecx   // c
	movl	12(%esp), %eax  // a

	movl	(%edx,%eax,4), %eax
	subl	(%edx,%ecx,4), %eax
	ret
