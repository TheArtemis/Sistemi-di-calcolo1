	.section	__TEXT,__text,regular,pure_instructions
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
## BB#0:
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	retl


.subsections_via_symbols
