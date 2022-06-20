.globl _f

_f:
    movl $0x4,%eax
    leal -3(%eax,%eax,2),%eax
    ret
