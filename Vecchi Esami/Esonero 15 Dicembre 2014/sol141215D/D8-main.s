	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	calll	L0$pb
L0$pb:
	popl	%edi
	movl	$-196611, 12(%esp)      ## imm = 0xFFFFFFFFFFFCFFFD
	movl	$-65537, 8(%esp)        ## imm = 0xFFFFFFFFFFFEFFFF
	leal	8(%esp), %esi
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	calll	_f
	cwtl
	movl	%eax, 4(%esp)
	leal	L_.str-L0$pb(%edi), %edi
	movl	%edi, (%esp)
	calll	_printf
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	calll	_f
	cwtl
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_printf
	movl	%esi, (%esp)
	movl	$2, 4(%esp)
	calll	_f
	cwtl
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_printf
	movl	%esi, (%esp)
	movl	$3, 4(%esp)
	calll	_f
	cwtl
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_printf
	xorl	%eax, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	retl

	.section	__TEXT,__literal8,8byte_literals
	.align	1                       ## @main.v
L_main.v:
	.short	65535                   ## 0xffff
	.short	65534                   ## 0xfffe
	.short	65533                   ## 0xfffd
	.short	65532                   ## 0xfffc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
