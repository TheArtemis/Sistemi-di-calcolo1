.globl _f

// orig
/*
_f: subl $28,%esp
   movl $28,(%esp)
   call _g
   addl $28,%esp
   ret
*/

// A
/*
_f: pushl $28
   call _g
   ret
*/

// B
/*
_f: subl $28,%esp
   movl $28,(%esp)
   call _g
   ret
*/

// C
/*
_f: pushl $28
   call _g
   popl %eax
   ret 
*/

// D
_f: pushl %ebp
   movl %esp,%ebp
   pushl $28
   call _g
   movl %ebp,%esp
   popl %ebp
   ret
