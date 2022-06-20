.globl _is_neg
_is_neg:
   movl 4(%esp),%eax
   cmpl $0, %eax
   jge E
   movl $1,%ecx
   jmp L
E: xorl %ecx,%ecx
L: movl %ecx,%eax
   ret
