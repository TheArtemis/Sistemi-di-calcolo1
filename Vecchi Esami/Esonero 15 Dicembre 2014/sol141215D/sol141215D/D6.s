.globl _f

_f:
    movl $0x1,%eax
    leal 5(%eax,%eax,4),%eax
    ret
