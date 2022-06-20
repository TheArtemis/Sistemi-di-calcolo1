	.globl	_f
_f:
	movl  4(%esp),%eax // %esi
    imull 8(%esp),%eax // %esi
    ret
