.globl _f

_f:
    movl $0x23456789,%eax
    movsbw %al, %ax
    ret