	.data	
	.comm	u,2052
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$6,n
	.data	
s14:	.asciz	"Hack Street's Back"
	.text	
	lea	s14,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s40:	.asciz	"ALL RIGHT"
	.text	
	lea	s40,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1028,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$9,n
	pushl	u+0
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1028,%eax
	pushl	%eax
	lea	u+4,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
