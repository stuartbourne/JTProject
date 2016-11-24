	.data	
	.comm	u,12
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	jmp	f1
p11:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+8
	movl	$7,n
	movl	u+8,%eax
	cmpl	$3,(%eax)
	jne	f2
	movl	$9,n
	pushl	u+0
	.data	
s41:	.asciz	"supplied number is three"
	.text	
	lea	s41,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f3
f2:	movl	$12,n
	incl	n
	pushl	u+0
	.data	
s86:	.asciz	"supplied number is not three"
	.text	
	lea	s86,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f3:	leave	
	ret	
f1:	movl	$16,n
	movl	$5,u+4
	incl	n
	lea	u+4,%eax
	pushl	%eax
	call	p11
	addl	$4,%esp
	movl	$17,n
	movl	$19,n
	call	pttrap0
	leave	
	ret	
