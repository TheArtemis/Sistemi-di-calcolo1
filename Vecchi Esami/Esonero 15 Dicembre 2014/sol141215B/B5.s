.globl _f
g:  movl $2, %eax
    ret 
_f: call g
    decl %eax
    jnz L
    xorl %eax,%eax
L:  ret
