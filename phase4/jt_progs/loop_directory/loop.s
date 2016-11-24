	.data	
	.comm	u,8
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
b1:	movl	$4,n
	cmpl	$2,u+4
	je	f2
	movl	$7,n
	movl	$2,u+4
	jmp	b1
f2:	movl	$10,n
	call	pttrap0
	leave	
	ret	
