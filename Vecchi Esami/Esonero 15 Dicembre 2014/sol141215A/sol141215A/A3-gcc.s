	.section	__TEXT,__text,regular,pure_instructions
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
## BB#0:
	pushl	%esi
	movl	8(%esp), %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	jle	LBB0_2
## BB#1:                                ## %._crit_edge
	leal	-1(%esi), %ecx
	leal	-2(%esi), %edx
	movl	%ecx, %eax
	mull	%edx
	shldl	$31, %eax, %edx
	imull	%ecx, %ecx
	addl	%esi, %ecx
	subl	%edx, %ecx
LBB0_2:
	movl	%ecx, %eax
	popl	%esi
	retl


.subsections_via_symbols
