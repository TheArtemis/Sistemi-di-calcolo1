.globl _f

// orig
/*
_f: subl $12,%esp
   movl $12,(%esp)
   call _g
   addl $12,%esp
   ret
*/

// A
/*
_f: pushl $12
   call _g
   ret
*/

// B
/*
_f: pushl $12
   call _g
   popl %eax
   ret 
*/

// C
_f: pushl %ebp
   movl %esp,%ebp
   pushl $12
   call _g
   movl %ebp,%esp
   popl %ebp
   ret

// D
/*
_f: subl $12,%esp
   movl $12,(%esp)
   call _g
   ret
*/
