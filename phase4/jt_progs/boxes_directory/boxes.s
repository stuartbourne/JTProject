	.data	
	.comm	u,3104
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$10,n
	pushl	u+4
	.data	
s22:	.asciz	"enter box width and height: "
	.text	
	lea	s22,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+3084,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+3080,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	incl	n
	pushl	u+4
	.data	
s93:	.asciz	"enter number of boxes across and down: "
	.text	
	lea	s93,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+3092,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+3088,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	movl	$16,n
	incl	u+3084
	incl	n
	incl	u+3080
	movl	$20,n
	.data	
s196:	.asciz	""
	.text	
	lea	s196,%eax
