	.globl	_f
_f:
   movl 4(%esp),%eax
   addl 8(%esp),%eax
   subl 12(%esp),%eax
   ret
