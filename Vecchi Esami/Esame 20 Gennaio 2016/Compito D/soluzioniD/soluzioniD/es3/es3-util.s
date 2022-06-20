.globl	df
df:
    movl 4(%esp), %eax
    subl 8(%esp), %eax
    movl $0xABADCAFE, %ecx
    movl $0xCAFEBABE, %edx
    ret
