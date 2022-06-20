.globl _f
_f: call g
    incl %eax
    jz L
    movl $1,%eax
L:  ret
g:  movl $-1, %eax
    ret
