.globl _f
_f: xorl %eax,%eax
    movl $1,%edx
    movl 4(%esp),%ecx
    cmpl %ecx, 8(%esp)
    cmovael %edx,%eax
    ret
