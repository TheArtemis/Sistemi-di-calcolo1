.globl _f

// orig
/*
_f: subl $4,%esp
   movl $4,(%esp)
   call _k
   addl $4,%esp
   ret
*/

// A
/*
_f: pushl $4
   call _k
   ret
*/

// B

_f: pushl %ebp
   movl %esp,%ebp
   pushl $4
   call _k
   movl %ebp,%esp
   popl %ebp
   ret


// C
/*
_f: pushl $4
   call _k
   popl %eax
   ret 
*/

// D
/*
_f: subl $4,%esp
   movl $4,(%esp)
   call _k
   ret
*/