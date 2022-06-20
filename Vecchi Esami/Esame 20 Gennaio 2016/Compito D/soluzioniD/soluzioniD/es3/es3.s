# int df(int x, int y);

# int fun(int* x, int* y) {
#     if (x>y) return df(*x*2,*y); 
#     return 7*df(*x,*y);
# }

.globl fun

fun:
    subl $8, %esp       # prologo
    movl 12(%esp), %ecx # ecx = x
    movl 16(%esp), %edx # edx = y
    cmpl %edx, %ecx     # x-y                  (setta EFLAGS)
    movl (%ecx), %ecx   # ecx = *x             (mov non modifica EFLAGS)
    movl (%edx), %edx   # edx = *y             (mov non modifica EFLAGS)
    jbe E               # x-y <= 0 <=> x <= y  (usa EFLAGS)
    addl %ecx, %ecx     # ecx = *x + *x = *x*2 (ramo if)
    movl %ecx, (%esp)   # passa *x*2
    movl %edx, 4(%esp)  # passa *y
    call df             # chiama df -> rìs in eax
    jmp F
E:  movl %ecx, (%esp)   # passa *x             (ramo else)
    movl %edx, 4(%esp)  # passa *y
    call df             # chiama df -> rìs in eax
    imull $7, %eax      # eax *= 7
F:  addl $8, %esp       # epilogo
    ret
