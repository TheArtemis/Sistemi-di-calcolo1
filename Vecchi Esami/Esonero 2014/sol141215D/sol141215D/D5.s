.globl _f

// orig

_f: subl $8,%esp
   movl $8,(%esp)
   call _h
   addl $8,%esp
   ret


// A
/*
_f: pushl $8
   call _h
   ret
*/

// B
/*
_f: pushl $8
   call _h
   popl %eax
   ret 
*/

// C
/*
_f: pushl %ebp
   movl %esp,%ebp
   pushl $8
   call _h
   addl $8,%esp
   popl %ebp
   ret 
*/

// D
/*
_f: pushl %ebp
   movl %esp,%ebp
   pushl $8
   call _h
   addl $4,%esp
   popl %ebp
   ret
*/