	.file	"es4.c"
	.text
	.globl	count
	.type	count, @function
count:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %ebp
	cmpl	$0, 76(%esp)
	jle	.L5
	movl	72(%esp), %eax
	leal	0(,%eax,4), %esi
	leal	0(%ebp,%esi), %edi
	addl	64(%esp), %esi
	movl	$0, 28(%esp)
	movl	$0, %ebx
.L4:
	movl	0(%ebp,%ebx,4), %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	distsqr
	movl	%eax, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	distsqr
	cmpl	%eax, 24(%esp)
	setl	%al
	movzbl	%al, %eax
	addl	%eax, 28(%esp)
	addl	$1, %ebx
	cmpl	76(%esp), %ebx
	jne	.L4
	jmp	.L2
.L5:
	movl	$0, 28(%esp)
.L2:
	movl	28(%esp), %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	count, .-count
	.globl	count_max
	.type	count_max, @function
count_max:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %ebp
	movl	56(%esp), %esi
	testl	%esi, %esi
	jle	.L11
	movl	$0, %edi
	movl	$0, %ebx
.L10:
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	count
	cmpl	%edi, %eax
	jle	.L9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	count
	movl	%eax, %edi
.L9:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jne	.L10
	jmp	.L8
.L11:
	movl	$0, %edi
.L8:
	movl	%edi, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	count_max, .-count_max
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
