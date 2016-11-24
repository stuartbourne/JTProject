	.data	
	.comm	u,17916
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$1,u+8
	movl	$7,u+12
	movl	$1,u+44
	movl	$7,u+48
	jmp	f1
p38:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1152
	movl	12(%ebp),%eax
	movl	%eax,u+1148
	movl	$39,n
	cmpl	$17,u+1144
	jne	f2
	incl	n
	movl	$19,u+1144
	jmp	f3
f2:	movl	$42,n
	movl	$17,u+1144
f3:	incl	n
	movl	u+1140,%eax
	imull	u+1144,%eax
	movl	$10000,%esi
	movl	%eax,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%eax
	movl	%eax,u+1140
	incl	n
	movl	u+1148,%eax
	movl	u+1152,%ebx
	movl	%ebx,%esi
	movl	u+1140,%ebx
	movl	%ebx,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f1:	movl	$48,n
	movl	$13277,u+1140
	incl	n
	movl	$17,u+1144
	movl	$1,u+1156
	movl	$52,u+1160
	jmp	f4
p145:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+1380
	movl	$13,u+1384
	movl	$68,n
	movl	$1,u+1444
b5:	movl	$69,n
	incl	n
	movl	u+1444,%eax
	cmpl	$13,%eax
	jle	f6
	cmpl	$1,%eax
	jge	f7
	pushl	n
	call	pttrap13
f7:f6:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	movl	$0,(%eax)
	incl	n
	incl	u+1444
	cmpl	$13,u+1444
	jg	f8
	jmp	b5
f8:	movl	$75,n
	movl	$1,u+1440
b9:	movl	$76,n
	incl	n
	lea	u+1376,%eax
	pushl	%eax
	pushl	$13
	call	p38
	addl	$8,%esp
	movl	$77,n
b10:	movl	$78,n
	movl	u+1376,%eax
	cmpl	$13,%eax
	jle	f11
	cmpl	$1,%eax
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	cmpl	$4,(%eax)
	jne	f13
	movl	$80,n
	lea	u+1376,%eax
	pushl	%eax
	pushl	$13
	call	p38
	addl	$8,%esp
	movl	$80,n
	jmp	b10
f13:	movl	$83,n
	movl	u+1440,%eax
	cmpl	$52,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+1164,%ebx
	addl	%ebx,%eax
	movl	u+1376,%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+1376,%eax
	cmpl	$13,%eax
	jle	f16
	cmpl	$1,%eax
	jge	f17
	pushl	n
	call	pttrap13
f17:f16:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	movl	u+1376,%ebx
	cmpl	$13,%ebx
	jle	f18
	cmpl	$1,%ebx
	jge	f19
	pushl	n
	call	pttrap13
f19:f18:	decl	%ebx
	shl	$2,%ebx
	lea	u+1388,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	movl	$86,n
	incl	u+1440
	cmpl	$52,u+1440
	jg	f20
	jmp	b9
f20:	movl	$90,n
	movl	$0,u+1372
	leave	
	ret	
p347:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1448
	movl	$95,n
	incl	u+1372
	incl	n
	movl	u+1448,%eax
	movl	u+1372,%ebx
	cmpl	$52,%ebx
	jle	f21
	cmpl	$1,%ebx
	jge	f22
	pushl	n
	call	pttrap13
f22:f21:	decl	%ebx
	shl	$2,%ebx
	lea	u+1164,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
p387:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1452
	movl	$101,n
	movl	u+1452,%eax
	movl	$52,%ebx
	subl	u+1372,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f4:	movl	$1,u+1456
	movl	$13,u+1460
	jmp	f23
p428:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+14784
	movl	12(%ebp),%eax
	movl	%eax,u+14780
	movl	16(%ebp),%eax
	movl	%eax,u+14776
	movl	$115,n
	movl	u+14784,%eax
	.data	
s448:	.asciz	""
	.text	
	lea	s448,%ebx
