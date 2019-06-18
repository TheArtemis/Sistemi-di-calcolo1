	.globl	_f
_f: movl	4(%esp), %edx   // d
    movl	8(%esp), %ecx   // c

	movw	(%edx,%ecx,2), %ax
	ret
