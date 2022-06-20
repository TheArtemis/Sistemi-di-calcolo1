.globl _f
_f: movl 4(%esp),%ecx
   movl $1,%eax
L: cmpl $0,%ecx
   jle E
   imull %ecx,%eax
   decl %ecx
   jmp L
E: ret
