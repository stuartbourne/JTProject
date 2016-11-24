	.data	
	.comm	u,12
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$5,n
	movl	$0,u+8
b1:	movl	$7,n
	cmpl	$10,u+8
	je	f2
	movl	$9,n
	pushl	u+4
	pushl	u+8
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	incl	n
	incl	u+8
	jmp	b1
f2:	movl	$12,n
	call	pttrap0
	leave	
	ret	
