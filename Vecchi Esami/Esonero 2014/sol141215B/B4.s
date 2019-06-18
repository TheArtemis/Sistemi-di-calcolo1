.globl _f
_f: pushl %ebp
   movl %esp,%ebp
   movl 8(%ebp),%eax
   cmpl %eax, 12(%ebp)
   cmovgl 12(%ebp),%eax
   popl %ebp
   ret
