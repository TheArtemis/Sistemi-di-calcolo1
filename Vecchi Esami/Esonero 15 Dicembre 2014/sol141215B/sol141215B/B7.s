.globl _f

_f:
    movl $0x3,%eax
    leal -1(%eax,%eax,2),%eax
    ret
