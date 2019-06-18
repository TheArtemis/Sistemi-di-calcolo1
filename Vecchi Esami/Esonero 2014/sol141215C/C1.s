.globl _f
_f: movl 4(%esp),%ecx
   movl $100,%eax
L: cmpl $0,%ecx
   jle E
   subl %ecx,%eax
   decl %ecx
   jmp L
E: ret
