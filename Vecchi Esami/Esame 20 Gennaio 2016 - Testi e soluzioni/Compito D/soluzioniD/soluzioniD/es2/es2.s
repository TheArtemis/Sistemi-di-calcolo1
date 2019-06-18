# void count_space(char* s, int* c) {
#     *c = 0;
#     while (*s) {
#         if (*s == 32) (*c)++;
#         s++;
#     }
# }

.globl count_space

count_space:
    movl 4(%esp), %eax
    movl 8(%esp), %ecx
    movl $0, (%ecx)
L:  cmpb $0, (%eax)
    je F
    cmpb $32, (%eax)
    jne E
    incl (%ecx)
E:  incl %eax
    jmp L
F:  ret
