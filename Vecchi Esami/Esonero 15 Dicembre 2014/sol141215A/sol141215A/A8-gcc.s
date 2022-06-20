	.section	__TEXT,__text,regular,pure_instructions
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
## BB#0:
	movl	8(%esp), %ecx
	movl	12(%esp), %eax
	movl	4(%esp), %edx
	movl	(%edx,%eax,4), %eax
	addl	(%edx,%ecx,4), %eax
	retl


.subsections_via_symbols
