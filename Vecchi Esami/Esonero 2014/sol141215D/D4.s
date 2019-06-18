.globl _f

_f:
    movl $0xDEADBEEF,%eax
    movswl %ax, %eax
    ret
