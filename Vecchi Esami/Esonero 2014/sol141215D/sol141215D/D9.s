.globl _f
_f:
   movl 4(%esp),%eax
K: cmpl $0, %eax
   jge Q
   incl %eax
   jmp K
Q: ret
