.globl _f
_f: movl 4(%esp),%ecx
   xorl %eax,%eax
L: cmpl $0,%ecx
   jle E
   addl $10,%eax
   decl %ecx
   jmp L
E: ret
