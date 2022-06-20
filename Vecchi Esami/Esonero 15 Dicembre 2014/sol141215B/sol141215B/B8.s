.globl _is_pos
_is_pos:
   movl 4(%esp),%eax
   cmpl $0, %eax
   jle E
   movl $1,%ecx
   jmp L
E: xorl %ecx,%ecx
L: movl %ecx,%eax
   ret
