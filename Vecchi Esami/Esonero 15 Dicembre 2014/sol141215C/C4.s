.globl _f
_f: movl $1,%edx
   xorl %eax,%eax
   movl 4(%esp),%ecx
   cmpl %ecx, 8(%esp)
   cmovgl %edx,%eax
   ret
