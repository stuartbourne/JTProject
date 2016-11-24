	.data	
	.comm	u,1036
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	jmp	f1
p16:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+8
	movl	$5,n
	pushl	u+4
	movl	u+8,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	leave	
	ret	
f1:	movl	$8,n
	.data	
s51:	.asciz	"Hello World"
	.text	
	lea	s51,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	lea	u+12,%eax
	pushl	%eax
	call	p16
	addl	$4,%esp
	movl	$9,n
	incl	n
	call	pttrap0
	leave	
	ret	
