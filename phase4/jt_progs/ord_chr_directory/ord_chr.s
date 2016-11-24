	.data	
	.comm	u,2060
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$5,n
	.data	
s14:	.asciz	"s"
	.text	
	lea	s14,%eax
	movl	$0,%ebx
	movl	%eax,%bl
	movl	%ebx,u+8
	incl	n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$56
	call	pttrap102
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	pttrap102
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1036,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$8,n
	call	pttrap0
	leave	
	ret	
