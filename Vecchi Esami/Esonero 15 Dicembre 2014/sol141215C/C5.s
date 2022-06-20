.globl _f
q: movl $2,%eax
   ret 
_f: call q
   subl $2,%eax
   jz L
   movl $1,%eax
L: ret
