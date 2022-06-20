.globl _f

_f:
    movl $0xDEADFA7E,%eax
    movsbw %al, %ax
    ret
