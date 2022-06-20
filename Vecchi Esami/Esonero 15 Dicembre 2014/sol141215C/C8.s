.globl _f
_f:
   movw 4(%esp),%ax
V: cmpw $0, %ax
   jle R
   decw %ax
   jmp V
R: 
   ret
