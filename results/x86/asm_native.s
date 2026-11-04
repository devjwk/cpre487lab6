	.file	"Convolutional.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB2163:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE2163:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE,"axG",@progbits,_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE,comdat
	.align 2
	.p2align 4
	.weak	_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE
	.type	_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE, @function
_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE:
.LFB3514:
	.cfi_startproc
	movq	(%rdi), %rax
	jmp	*32(%rax)
	.cfi_endproc
.LFE3514:
	.size	_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE, .-_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE
	.text
	.align 2
	.p2align 4
	.globl	_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE
	.type	_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE, @function
_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE:
.LFB3787:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	movq	16(%rdi), %rdx
	movq	%rsi, -112(%rsp)
	movq	8(%rdx), %rax
	movq	16(%rdx), %r13
	movq	80(%rdi), %rdx
	movq	(%rdx), %rsi
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rbx
	movq	224(%rdi), %rdx
	movq	%rsi, -24(%rsp)
	movq	(%rdx), %rdi
	movq	%rcx, -16(%rsp)
	movq	%rdi, -88(%rsp)
	movq	8(%rdx), %rdi
	movq	%rbx, -8(%rsp)
	movq	%rdi, -120(%rsp)
	testq	%rsi, %rsi
	je	.L41
	testq	%rcx, %rcx
	je	.L41
	testq	%rbx, %rbx
	je	.L41
	movl	%ebx, %esi
	imull	%ecx, %esi
	movl	%r13d, %ecx
	imull	%eax, %ecx
	movl	%edi, %edx
	imull	%r13d, %edx
	subl	%edi, %eax
	imull	%r13d, %eax
	movl	%ecx, 20(%rsp)
	movq	%rdi, %rcx
	imulq	%r13, %rcx
	imull	%ebx, %edx
	movl	%esi, 12(%rsp)
	movl	%ebx, %r12d
	movq	480(%r15), %rsi
	imull	%r13d, %r12d
	movl	%eax, -40(%rsp)
	movq	200(%r15), %rax
	movq	%rsi, (%rsp)
	movl	%edx, -68(%rsp)
	movq	%rcx, -80(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, -28(%rsp)
	movq	$0, -64(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r15, %rax
	movl	%r13d, 16(%rsp)
	movq	%r13, %r15
	movl	%ebx, %r14d
	movl	%r12d, %r13d
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%rax, %r12
.L7:
	movl	8(%rsp), %eax
	movq	$0, -56(%rsp)
	movl	%eax, -32(%rsp)
	movl	-28(%rsp), %eax
	movl	%eax, -36(%rsp)
	movq	%r12, %rax
	movq	%r15, %r12
	movl	%r13d, %r15d
	movq	%rax, %r13
.L19:
	movq	$0, -48(%rsp)
.L17:
	movq	-48(%rsp), %rbx
	movq	(%rsp), %rdi
	movl	%ebx, %eax
	cmpq	$0, -88(%rsp)
	vmovss	(%rdi,%rax,4), %xmm0
	je	.L8
	movl	%ebx, -72(%rsp)
	movq	$0, -96(%rsp)
	movq	$0, -104(%rsp)
	movl	-32(%rsp), %ebp
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%r10d, %r10d
	cmpq	$0, -120(%rsp)
	movq	-96(%rsp), %rbx
	movl	-72(%rsp), %r11d
	je	.L11
	.p2align 4,,10
	.p2align 3
.L14:
	testq	%r12, %r12
	je	.L13
	movq	-112(%rsp), %rax
	movq	344(%r13), %rdi
	movq	64(%rax), %r8
	leal	0(%rbp,%rbx), %r9d
	movl	%r11d, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%edx, %esi
	vmovss	(%rdi,%rsi,4), %xmm2
	leal	(%r9,%rax), %ecx
	incq	%rax
	vfmadd231ss	(%r8,%rcx,4), %xmm2, %xmm0
	addl	%r14d, %edx
	cmpq	%rax, %r12
	jne	.L10
.L13:
	incq	%r10
	addl	%r15d, %r11d
	addq	%r12, %rbx
	cmpq	%r10, -120(%rsp)
	jne	.L14
.L11:
	incq	-104(%rsp)
	movl	-68(%rsp), %edi
	addl	-40(%rsp), %ebp
	addl	%edi, -72(%rsp)
	movq	-104(%rsp), %rax
	movq	-80(%rsp), %rdi
	addq	%rdi, -96(%rsp)
	cmpq	%rax, -88(%rsp)
	jne	.L9
.L8:
	movq	-48(%rsp), %rbx
	movl	-36(%rsp), %eax
	vmaxss	%xmm1, %xmm0, %xmm0
	addl	%ebx, %eax
	movq	24(%rsp), %rdi
	movl	%eax, %eax
	incq	%rbx
	movq	%rbx, -48(%rsp)
	vmovss	%xmm0, (%rdi,%rax,4)
	cmpq	%rbx, -8(%rsp)
	jne	.L17
	incq	-56(%rsp)
	movl	16(%rsp), %edi
	addl	%r14d, -36(%rsp)
	addl	%edi, -32(%rsp)
	movq	-56(%rsp), %rax
	cmpq	%rax, -16(%rsp)
	jne	.L19
	incq	-64(%rsp)
	movl	12(%rsp), %edi
	movq	%r13, %rax
	addl	%edi, -28(%rsp)
	movl	%r15d, %r13d
	movl	20(%rsp), %edi
	movq	%r12, %r15
	movq	%rax, %r12
	movq	-64(%rsp), %rax
	addl	%edi, 8(%rsp)
	cmpq	%rax, -24(%rsp)
	jne	.L7
.L41:
	addq	$32, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3787:
	.size	_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE, .-_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE
	.p2align 4
	.type	_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, @function
_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm:
.LFB3788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$256, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	56(%rbp), %rax
	movq	%rdi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 248(%rsp)
	movq	24(%rbp), %r12
	cmpq	%rax, 48(%rbp)
	jnb	.L105
	leaq	0(,%r12,4), %rax
	movq	%rax, 176(%rsp)
	imulq	48(%rbp), %rax
	movq	%r9, %rbx
	imulq	40(%rbp), %rbx
	leaq	(%rcx,%rax), %r13
	leaq	0(,%r9,4), %rax
	movq	%rax, 184(%rsp)
	movq	%r9, %rax
	imulq	%r12, %rax
	movq	%rbx, 80(%rsp)
	imulq	%r12, %rbx
	movq	%rax, 168(%rsp)
	leaq	0(,%r12,8), %rax
	movq	%rax, 160(%rsp)
	leaq	(%r12,%r12), %rax
	movq	%rax, 152(%rsp)
	leaq	-1(%r12), %rax
	movq	%rax, 240(%rsp)
	movq	%r12, %rax
	shrq	$3, %rax
	salq	$5, %rax
	imulq	%r9, %r8
	movq	%rbx, 72(%rsp)
	movq	48(%rbp), %r15
	movq	%r9, %rbx
	movq	%rax, %r9
	movq	%r12, %rax
	andq	$-8, %rax
	imulq	%r12, %r15
	movq	%rax, 64(%rsp)
	testq	%r12, %r12
	movl	$1, %eax
	cmovne	%r12, %rax
	movq	%r8, 48(%rsp)
	movq	%rax, %rdi
	movq	%rax, 120(%rsp)
	shrq	$3, %rax
	salq	$5, %rax
	movq	%rax, 56(%rsp)
	andq	$-8, %rdi
	leaq	-1(%rbx), %rax
	movq	%rdi, 88(%rsp)
	movq	%rax, 144(%rsp)
	movq	%r15, %r12
	movq	24(%rbp), %r15
	movq	%r9, %r11
	movq	%r13, %r14
	movq	%rsi, %r9
	movq	%rcx, %r13
.L76:
	movq	48(%rbp), %rax
	xorl	%edx, %edx
	divq	16(%rbp)
	movq	%rdx, 232(%rsp)
	movq	%rax, %rbx
	testq	%r15, %r15
	je	.L64
	movq	176(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r9, 216(%rsp)
	movq	%r11, 224(%rsp)
	call	memcpy
	cmpq	$0, 32(%rbp)
	movq	224(%rsp), %r11
	movq	216(%rsp), %r9
	je	.L47
	cmpq	$0, 40(%rbp)
	je	.L47
	cmpq	$0, 248(%rsp)
	je	.L47
	movq	24(%rsp), %rax
	movq	$0, 112(%rsp)
	imulq	%rbx, %rax
	movq	$0, 104(%rsp)
	movq	$0, 128(%rsp)
	addq	232(%rsp), %rax
	imulq	248(%rsp), %rax
	movq	%r12, %r10
	movq	%r13, %r12
	movq	%rax, 96(%rsp)
	movq	64(%rsp), %r13
.L49:
	movq	40(%rsp), %rax
	movq	96(%rsp), %rbx
	movq	$0, 232(%rsp)
	leaq	(%rax,%rbx,4), %rbx
	movq	112(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 192(%rsp)
	.p2align 4,,10
	.p2align 3
.L63:
	cmpq	$2, 248(%rsp)
	jbe	.L82
	movq	208(%rsp), %rax
	movq	$1, 224(%rsp)
	movq	%rbx, 136(%rsp)
	leaq	(%r15,%rax), %rdi
	movq	%r10, 216(%rsp)
	movq	%r13, 200(%rsp)
	leaq	(%r9,%rax,4), %rdx
	leaq	4(%rbx), %r8
	movq	%rdi, %r13
	movq	%rax, %r10
.L56:
	cmpq	$6, 240(%rsp)
	vmovss	-4(%r8), %xmm3
	jbe	.L83
	movq	176(%rsp), %rax
	vbroadcastss	(%r8), %ymm1
	leaq	(%rdx,%rax), %rcx
	vbroadcastss	%xmm3, %ymm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L52:
	vmovups	(%rdx,%rax), %ymm0
	vfmadd213ps	(%r14,%rax), %ymm2, %ymm0
	vfmadd231ps	(%rcx,%rax), %ymm1, %ymm0
	vmovups	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L52
	movq	200(%rsp), %rax
	cmpq	%rax, %r15
	je	.L53
.L51:
	movq	%r15, %rcx
	subq	%rax, %rcx
	leaq	-1(%rcx), %rsi
	cmpq	$2, %rsi
	jbe	.L54
	movq	216(%rsp), %rbx
	vshufps	$0, %xmm3, %xmm3, %xmm1
	leaq	(%rbx,%rax), %rsi
	leaq	(%r12,%rsi,4), %rsi
	vmovups	(%rsi), %xmm6
	leaq	(%rax,%r10), %rbx
	vfmadd132ps	(%r9,%rbx,4), %xmm6, %xmm1
	vbroadcastss	(%r8), %xmm0
	leaq	(%rax,%r13), %rdi
	vfmadd132ps	(%r9,%rdi,4), %xmm1, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rcx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	cmpq	%rsi, %rcx
	je	.L53
.L54:
	leaq	(%rax,%r10), %rdi
	vmovss	(%r9,%rdi,4), %xmm1
	leaq	0(,%rax,4), %rsi
	leaq	(%r14,%rsi), %rcx
	vfmadd213ss	(%rcx), %xmm3, %xmm1
	vmovss	(%r8), %xmm0
	leaq	(%rax,%r13), %rdi
	vfmadd231ss	(%r9,%rdi,4), %xmm0, %xmm1
	vmovss	%xmm1, (%rcx)
	leaq	1(%rax), %rcx
	cmpq	%rcx, %r15
	jbe	.L53
	leaq	(%rcx,%r10), %rbx
	vmovss	(%r9,%rbx,4), %xmm1
	leaq	4(%r14,%rsi), %rdi
	vfmadd213ss	(%rdi), %xmm3, %xmm1
	addq	%r13, %rcx
	addq	$2, %rax
	vfmadd231ss	(%r9,%rcx,4), %xmm0, %xmm1
	vmovss	%xmm1, (%rdi)
	cmpq	%rax, %r15
	jbe	.L53
	leaq	8(%r14,%rsi), %rcx
	vmovss	(%rcx), %xmm7
	leaq	(%r10,%rax), %rsi
	vfmadd132ss	(%r9,%rsi,4), %xmm7, %xmm3
	addq	%r13, %rax
	vfmadd132ss	(%r9,%rax,4), %xmm3, %xmm0
	vmovss	%xmm0, (%rcx)
.L53:
	movq	224(%rsp), %rax
	movq	152(%rsp), %rbx
	leaq	1(%rax), %rdi
	addq	$2, %rax
	movq	%rax, 224(%rsp)
	addq	160(%rsp), %rdx
	addq	%rbx, %r10
	addq	%rbx, %r13
	addq	$8, %r8
	cmpq	%rax, 144(%rsp)
	ja	.L56
	movq	136(%rsp), %rbx
	movq	216(%rsp), %r10
	movq	200(%rsp), %r13
.L50:
	movq	192(%rsp), %rax
	leaq	(%rax,%rdi), %rdx
	imulq	%r15, %rdx
	.p2align 4,,10
	.p2align 3
.L62:
	cmpq	$6, 240(%rsp)
	vmovss	(%rbx,%rdi,4), %xmm1
	jbe	.L84
	leaq	(%r9,%rdx,4), %rcx
	vbroadcastss	%xmm1, %ymm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	vmovups	(%rcx,%rax), %ymm0
	vfmadd213ps	(%r14,%rax), %ymm2, %ymm0
	vmovups	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%r11, %rax
	jne	.L58
	cmpq	%r13, %r15
	je	.L59
	movq	%r13, %rax
.L57:
	movq	%r15, %rcx
	subq	%rax, %rcx
	leaq	-1(%rcx), %rsi
	cmpq	$2, %rsi
	jbe	.L60
	leaq	(%r10,%rax), %rsi
	leaq	(%r12,%rsi,4), %rsi
	vmovups	(%rsi), %xmm4
	leaq	(%rdx,%rax), %r8
	vshufps	$0, %xmm1, %xmm1, %xmm0
	vfmadd132ps	(%r9,%r8,4), %xmm4, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rcx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	cmpq	%rsi, %rcx
	je	.L59
.L60:
	leaq	(%rdx,%rax), %r8
	vmovss	(%r9,%r8,4), %xmm0
	leaq	0(,%rax,4), %rsi
	leaq	(%r14,%rsi), %rcx
	vfmadd213ss	(%rcx), %xmm1, %xmm0
	vmovss	%xmm0, (%rcx)
	leaq	1(%rax), %rcx
	cmpq	%rcx, %r15
	jbe	.L59
	addq	%rdx, %rcx
	vmovss	(%r9,%rcx,4), %xmm0
	leaq	4(%rsi,%r14), %r8
	vfmadd213ss	(%r8), %xmm1, %xmm0
	addq	$2, %rax
	vmovss	%xmm0, (%r8)
	cmpq	%rax, %r15
	jbe	.L59
	leaq	8(%rsi,%r14), %rcx
	vmovss	(%rcx), %xmm5
	addq	%rdx, %rax
	vfmadd132ss	(%r9,%rax,4), %xmm5, %xmm1
	vmovss	%xmm1, (%rcx)
.L59:
	incq	%rdi
	addq	%r15, %rdx
	cmpq	248(%rsp), %rdi
	jb	.L62
	incq	232(%rsp)
	movq	248(%rsp), %rdx
	addq	184(%rsp), %rbx
	addq	%rdx, 192(%rsp)
	movq	232(%rsp), %rax
	movq	168(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	cmpq	%rax, 40(%rbp)
	jne	.L63
	movq	48(%rsp), %rdi
	incq	128(%rsp)
	addq	%rdi, 96(%rsp)
	movq	80(%rsp), %rdi
	movq	128(%rsp), %rax
	addq	%rdi, 104(%rsp)
	movq	72(%rsp), %rdi
	addq	%rdi, 112(%rsp)
	cmpq	%rax, 32(%rbp)
	ja	.L49
	movq	%r12, %r13
	movq	%r10, %r12
.L47:
	cmpq	$7, %r15
	jbe	.L85
	movq	56(%rsp), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	leaq	(%r14,%rax), %rdx
	movq	%r14, %rax
.L66:
	vmovups	(%rax), %ymm1
	addq	$32, %rax
	vcmpltps	%ymm1, %ymm2, %ymm0
	vandps	%ymm1, %ymm0, %ymm0
	vmovups	%ymm0, -32(%rax)
	cmpq	%rax, %rdx
	jne	.L66
	movq	88(%rsp), %rax
	cmpq	%rax, 120(%rsp)
	je	.L104
.L65:
	movq	120(%rsp), %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rcx
	cmpq	$2, %rcx
	jbe	.L68
	leaq	(%rax,%r12), %rcx
	leaq	0(%r13,%rcx,4), %rcx
	vmovups	(%rcx), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcmpltps	%xmm1, %xmm0, %xmm0
	vandps	%xmm1, %xmm0, %xmm0
	vmovups	%xmm0, (%rcx)
	movq	%rdx, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rax
	cmpq	%rcx, %rdx
	je	.L104
.L68:
	leaq	0(,%rax,4), %rdx
	leaq	(%r14,%rdx), %rcx
	vmovss	(%rcx), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx)
	leaq	1(%rax), %rcx
	cmpq	%rcx, %r15
	jbe	.L104
	leaq	4(%rdx,%r14), %rcx
	vmovss	(%rcx), %xmm0
	addq	$2, %rax
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx)
	cmpq	%rax, %r15
	jbe	.L104
	leaq	8(%rdx,%r14), %rax
	vmovss	(%rax), %xmm0
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	vzeroupper
.L64:
	incq	48(%rbp)
	addq	176(%rsp), %r14
	addq	%r15, %r12
	movq	48(%rbp), %rax
	cmpq	%rax, 56(%rbp)
	jne	.L76
.L105:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L84:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L57
.L82:
	xorl	%edi, %edi
	jmp	.L50
.L83:
	xorl	%eax, %eax
	jmp	.L51
.L104:
	vzeroupper
	jmp	.L64
.L85:
	xorl	%eax, %eax
	jmp	.L65
	.cfi_endproc
.LFE3788:
	.size	_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, .-_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm
	.align 2
	.p2align 4
	.globl	_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE
	.type	_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE, @function
_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE:
.LFB3789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	80(%rdi), %rax
	movq	16(%rdi), %rsi
	movq	8(%rax), %rdx
	movq	(%rax), %rbx
	movq	224(%rdi), %rcx
	imulq	%rdx, %rbx
	movq	200(%rdi), %r11
	movq	480(%rdi), %r10
	movq	16(%rsi), %r9
	movq	8(%rsi), %r8
	movq	344(%rdi), %rsi
	movq	64(%rbp), %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	$0
	.cfi_def_cfa_offset 48
	pushq	8(%rcx)
	.cfi_def_cfa_offset 56
	pushq	(%rcx)
	.cfi_def_cfa_offset 64
	movq	%r11, %rcx
	pushq	16(%rax)
	.cfi_def_cfa_offset 72
	pushq	%rdx
	.cfi_def_cfa_offset 80
	movq	%r10, %rdx
	call	_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3789:
	.size	_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE, .-_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE
	.align 2
	.p2align 4
	.globl	_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE
	.type	_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE, @function
_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE:
.LFB3801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$296, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	16(%rdi), %rdx
	movq	64(%rsi), %rsi
	movq	8(%rdx), %rbx
	movq	%rsi, -32(%rsp)
	movq	%rbx, 72(%rsp)
	movq	16(%rdx), %rbx
	movq	80(%rdi), %rdx
	movq	%rbx, 128(%rsp)
	movq	(%rdx), %rdi
	movq	8(%rdx), %r11
	movq	16(%rdx), %rbx
	movq	224(%rax), %rdx
	movq	%rdi, 64(%rsp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdx
	movq	%rcx, 48(%rsp)
	movq	%rdx, 168(%rsp)
	movq	_ZN2ML6Config9TILE_SIZEE(%rip), %rdx
	movl	$1, %ecx
	testq	%rdx, %rdx
	cmovne	%rdx, %rcx
	imulq	%r11, %rdi
	movq	%r11, 56(%rsp)
	movq	%rbx, 272(%rsp)
	movq	%rcx, 120(%rsp)
	movq	344(%rax), %r13
	movq	480(%rax), %rdx
	movq	200(%rax), %r15
	movq	%rdi, 40(%rsp)
	testq	%rdi, %rdi
	je	.L110
	testq	%rbx, %rbx
	je	.L205
	movq	%rbx, %rax
	shrq	$3, %rax
	salq	$5, %rax
	movq	%rax, 288(%rsp)
	leaq	0(,%rbx,4), %r12
	movq	%rbx, %rax
	leaq	-1(%rbx), %r11
	andq	$-8, %rbx
	movq	%rbx, %r10
	movq	%rax, %rbx
	andl	$7, %ebx
	leaq	-1(%rbx), %rax
	movq	%rax, 280(%rsp)
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	leaq	4(%rdx), %r14
.L112:
	movq	%rsi, %rax
	subq	%r14, %rax
	cmpq	$24, %rax
	jbe	.L162
	cmpq	$2, %r11
	jbe	.L162
	cmpq	$6, %r11
	jbe	.L153
	xorl	%eax, %eax
.L114:
	vmovups	(%rdx,%rax), %ymm5
	vmovups	%ymm5, (%rsi,%rax)
	addq	$32, %rax
	cmpq	288(%rsp), %rax
	jne	.L114
	cmpq	%r10, 272(%rsp)
	je	.L119
	cmpq	$2, 280(%rsp)
	movq	%rbx, %rdi
	movq	%r10, %rax
	jbe	.L116
.L113:
	vmovups	(%rdx,%rax,4), %xmm6
	leaq	(%rax,%rcx), %r9
	vmovups	%xmm6, (%r15,%r9,4)
	movq	%rdi, %r9
	andq	$-4, %r9
	addq	%r9, %rax
	cmpq	%rdi, %r9
	je	.L119
.L116:
	vmovss	(%rdx,%rax,4), %xmm0
	leaq	(%rax,%rcx), %rdi
	vmovss	%xmm0, (%r15,%rdi,4)
	leaq	1(%rax), %rdi
	leaq	0(,%rax,4), %r9
	cmpq	%rdi, 272(%rsp)
	jbe	.L119
	vmovss	4(%rdx,%r9), %xmm0
	addq	%rcx, %rdi
	addq	$2, %rax
	vmovss	%xmm0, (%r15,%rdi,4)
	cmpq	%rax, 272(%rsp)
	jbe	.L119
	vmovss	8(%rdx,%r9), %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%r15,%rax,4)
.L119:
	incq	%r8
	addq	%r12, %rsi
	addq	272(%rsp), %rcx
	cmpq	40(%rsp), %r8
	jne	.L112
	cmpq	$0, 128(%rsp)
	je	.L124
.L152:
	cmpq	$0, 64(%rsp)
	je	.L124
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L124
	cmpq	$0, 48(%rsp)
	je	.L124
	movq	168(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L124
	movq	272(%rsp), %rdi
	movq	120(%rsp), %rax
	movq	72(%rsp), %rsi
	imulq	%rdi, %rax
	movq	%rdi, %rbx
	imulq	%rcx, %rbx
	movq	%rax, -88(%rsp)
	movq	128(%rsp), %rax
	movq	%rbx, -72(%rsp)
	imulq	%rax, %rsi
	leaq	0(,%rdi,4), %rbx
	movq	%rbx, 256(%rsp)
	movq	%rsi, -64(%rsp)
	salq	$2, %rsi
	movq	%rsi, -40(%rsp)
	movq	%rax, %rsi
	imulq	%rdi, %rax
	movq	$0, -24(%rsp)
	movq	$0, 112(%rsp)
	imulq	%rax, %rdx
	movq	%rax, 144(%rsp)
	movq	%rsi, %rax
	salq	$2, %rax
	movq	%rdx, -48(%rsp)
	movq	%rax, 136(%rsp)
	movq	%r13, %r14
.L140:
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rbx
	movq	%rsi, %rax
	movq	%rsi, 264(%rsp)
	addq	%rbx, %rsi
	movq	272(%rsp), %rbx
	movq	%rsi, %rdi
	cmpq	%rsi, %rbx
	cmovbe	%rbx, %rdi
	movq	%rsi, 112(%rsp)
	leaq	(%r15,%rdi,4), %rdx
	movq	%rax, %rsi
	leaq	0(,%rax,4), %rax
	subq	%rax, %rdx
	movq	%rdi, 200(%rsp)
	addq	%r14, %rax
	subq	%rsi, %rdi
	movq	%rax, 160(%rsp)
	leaq	-1(%rdi), %rax
	movq	%rax, 248(%rsp)
	movq	%rdi, %rax
	shrq	$3, %rax
	salq	$5, %rax
	movq	%rdi, 240(%rsp)
	movq	%rax, %r13
	movq	%rdi, %rax
	andq	$-8, %rdi
	movq	%rdi, %rbx
	subq	%rbx, %rax
	movq	%rdi, 232(%rsp)
	movq	%rax, 216(%rsp)
	addq	%rsi, %rdi
	decq	%rax
	movq	%rdx, -80(%rsp)
	movq	%rdi, 224(%rsp)
	movq	$0, -16(%rsp)
	movq	$0, 104(%rsp)
	movq	%rax, 208(%rsp)
.L139:
	movq	104(%rsp), %rax
	movq	120(%rsp), %rsi
	movq	%rax, %rdx
	addq	%rsi, %rax
	movq	128(%rsp), %rsi
	movq	%rax, 104(%rsp)
	cmpq	%rax, %rsi
	cmovbe	%rsi, %rax
	cmpq	%rdx, %rax
	jbe	.L125
	movq	264(%rsp), %rsi
	cmpq	%rsi, 200(%rsp)
	jbe	.L125
	movq	-32(%rsp), %rbx
	salq	$2, %rax
	salq	$2, %rdx
	leaq	(%rbx,%rax), %rdi
	subq	%rax, %rdx
	movq	%rdi, -56(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%rsi, -8(%rsp)
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 96(%rsp)
	movq	%r13, %rbx
	movq	%r14, %r12
	movq	%r15, %r13
.L126:
	movq	-8(%rsp), %rdi
	movq	-80(%rsp), %rsi
	leaq	0(,%rdi,4), %rax
	leaq	(%rax,%rsi), %r15
	leaq	0(%r13,%rax), %r14
	movq	(%rsp), %rax
	movq	56(%rsp), %rsi
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rax
	movq	%rdi, 288(%rsp)
	movq	%rax, 80(%rsp)
	addq	%rsi, %rax
	movq	%rax, -96(%rsp)
	movq	%r15, %rax
	movq	%r12, %r15
	movq	%rax, %r12
.L138:
	movq	288(%rsp), %rax
	movq	-24(%rsp), %r11
	movq	-56(%rsp), %rsi
	movq	16(%rsp), %rdi
	addq	%rax, %r11
	leaq	0(%r13,%rax,4), %rax
	movq	%rax, 176(%rsp)
	movq	-16(%rsp), %rax
	leaq	(%rsi,%rdi,4), %rsi
	movq	%rsi, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	$0, 88(%rsp)
.L127:
	movq	24(%rsp), %rax
	movq	$0, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 280(%rsp)
	.p2align 4,,10
	.p2align 3
.L136:
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rax
	movq	184(%rsp), %rsi
	addq	280(%rsp), %rdi
	leaq	(%rax,%rsi,4), %rdx
	.p2align 4,,10
	.p2align 3
.L135:
	movq	264(%rsp), %rax
	leaq	4(%rdx), %r8
	leaq	(%rsi,%rax), %rcx
	movq	%r14, %rax
	subq	%r8, %rax
	vmovss	(%rdi), %xmm1
	cmpq	$24, %rax
	jbe	.L155
	movq	248(%rsp), %rax
	cmpq	$2, %rax
	jbe	.L155
	cmpq	$6, %rax
	jbe	.L156
	vbroadcastss	%xmm1, %ymm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L130:
	vmovups	(%rdx,%rax), %ymm0
	vfmadd213ps	(%r14,%rax), %ymm2, %ymm0
	vmovups	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%rax, %rbx
	jne	.L130
	movq	232(%rsp), %r10
	cmpq	%r10, 240(%rsp)
	je	.L134
	cmpq	$2, 208(%rsp)
	movq	216(%rsp), %r9
	movq	224(%rsp), %rax
	jbe	.L132
.L129:
	movq	288(%rsp), %r8
	addq	%r10, %rcx
	addq	%r10, %r8
	leaq	0(%r13,%r8,4), %r8
	vmovups	(%r8), %xmm3
	vshufps	$0, %xmm1, %xmm1, %xmm0
	vfmadd132ps	(%r15,%rcx,4), %xmm3, %xmm0
	movq	%r9, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rax
	vmovups	%xmm0, (%r8)
	cmpq	%r9, %rcx
	je	.L134
.L132:
	leaq	(%rax,%rsi), %r8
	vmovss	(%r15,%r8,4), %xmm0
	leaq	(%rax,%r11), %rcx
	leaq	0(%r13,%rcx,4), %rcx
	vfmadd213ss	(%rcx), %xmm1, %xmm0
	movq	200(%rsp), %r9
	vmovss	%xmm0, (%rcx)
	leaq	1(%rax), %rcx
	cmpq	%rcx, %r9
	jbe	.L134
	leaq	(%rcx,%r11), %r8
	addq	%rsi, %rcx
	vmovss	(%r15,%rcx,4), %xmm0
	leaq	0(%r13,%r8,4), %r8
	vfmadd213ss	(%r8), %xmm1, %xmm0
	addq	$2, %rax
	vmovss	%xmm0, (%r8)
	cmpq	%r9, %rax
	jnb	.L134
	leaq	(%rax,%r11), %rcx
	leaq	0(%r13,%rcx,4), %rcx
	vmovss	(%rcx), %xmm4
	addq	%rsi, %rax
	vfmadd132ss	(%r15,%rax,4), %xmm4, %xmm1
	vmovss	%xmm1, (%rcx)
.L134:
	addq	$4, %rdi
	addq	256(%rsp), %rdx
	addq	272(%rsp), %rsi
	cmpq	280(%rsp), %rdi
	jne	.L135
	incq	192(%rsp)
	movq	144(%rsp), %rsi
	addq	136(%rsp), %rdi
	addq	%rsi, 184(%rsp)
	movq	192(%rsp), %rax
	movq	%rdi, 280(%rsp)
	cmpq	%rax, 168(%rsp)
	jne	.L136
	incq	88(%rsp)
	movq	-40(%rsp), %rdi
	addq	%rdi, 32(%rsp)
	movq	88(%rsp), %rax
	movq	-48(%rsp), %rdi
	addq	%rdi, 24(%rsp)
	cmpq	%rax, 48(%rsp)
	jne	.L127
	incq	80(%rsp)
	movq	256(%rsp), %rax
	movq	128(%rsp), %rdi
	addq	%rax, %r14
	addq	%rdi, 16(%rsp)
	addq	%rax, %r12
	movq	272(%rsp), %rdi
	movq	80(%rsp), %rax
	addq	%rdi, 288(%rsp)
	cmpq	-96(%rsp), %rax
	jne	.L138
	movq	72(%rsp), %rdi
	incq	96(%rsp)
	addq	%rdi, 8(%rsp)
	movq	-64(%rsp), %rdi
	movq	%r15, %r12
	addq	%rdi, (%rsp)
	movq	96(%rsp), %rax
	movq	-72(%rsp), %rdi
	addq	%rdi, -8(%rsp)
	cmpq	%rax, 64(%rsp)
	jne	.L126
	movq	%r15, %r14
	movq	%r13, %r15
	movq	%rbx, %r13
.L125:
	movq	-88(%rsp), %rbx
	addq	%rbx, -16(%rsp)
	movq	104(%rsp), %rbx
	cmpq	%rbx, 128(%rsp)
	ja	.L139
	movq	120(%rsp), %rbx
	subq	%rbx, -24(%rsp)
	movq	112(%rsp), %rbx
	cmpq	%rbx, 272(%rsp)
	ja	.L140
.L124:
	movq	272(%rsp), %rdx
	imulq	40(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L204
	leaq	-1(%rdx), %rax
	cmpq	$6, %rax
	jbe	.L158
	movq	%rdx, %rax
	shrq	$3, %rax
	salq	$5, %rax
	movq	%r15, %rcx
	addq	%r15, %rax
	vxorps	%xmm2, %xmm2, %xmm2
.L142:
	vmovups	(%rcx), %ymm1
	addq	$32, %rcx
	vcmpltps	%ymm1, %ymm2, %ymm0
	vandps	%ymm1, %ymm0, %ymm0
	vmovups	%ymm0, -32(%rcx)
	cmpq	%rax, %rcx
	jne	.L142
	movq	%rdx, %rax
	andq	$-8, %rax
	testb	$7, %dl
	je	.L204
.L141:
	movq	%rdx, %rcx
	subq	%rax, %rcx
	leaq	-1(%rcx), %rsi
	cmpq	$2, %rsi
	jbe	.L144
	leaq	(%r15,%rax,4), %rsi
	vmovups	(%rsi), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcmpltps	%xmm1, %xmm0, %xmm0
	vandps	%xmm1, %xmm0, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rcx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	cmpq	%rsi, %rcx
	je	.L204
.L144:
	leaq	0(,%rax,4), %rcx
	leaq	(%r15,%rcx), %rsi
	vmovss	(%rsi), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rsi)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %rdx
	jbe	.L204
	leaq	4(%r15,%rcx), %rsi
	vmovss	(%rsi), %xmm0
	addq	$2, %rax
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rsi)
	cmpq	%rax, %rdx
	jbe	.L204
	leaq	8(%r15,%rcx), %rax
	vmovss	(%rax), %xmm0
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	vzeroupper
.L205:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L153:
	.cfi_restore_state
	movq	272(%rsp), %rdi
	xorl	%eax, %eax
	jmp	.L113
.L162:
	xorl	%eax, %eax
.L118:
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, 272(%rsp)
	jne	.L118
	jmp	.L119
.L204:
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	movq	176(%rsp), %rax
	movq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L128:
	vmovss	(%rcx), %xmm0
	addq	$4, %rax
	vfmadd213ss	-4(%rax), %xmm1, %xmm0
	addq	$4, %rcx
	vmovss	%xmm0, -4(%rax)
	cmpq	%r12, %rax
	jne	.L128
	jmp	.L134
.L156:
	movq	240(%rsp), %r9
	movq	264(%rsp), %rax
	xorl	%r10d, %r10d
	jmp	.L129
.L110:
	cmpq	$0, 272(%rsp)
	je	.L205
	cmpq	$0, 128(%rsp)
	jne	.L152
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L158:
	xorl	%eax, %eax
	jmp	.L141
	.cfi_endproc
.LFE3801:
	.size	_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE, .-_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv:
.LFB4673:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	72(%rdi), %rcx
	movq	80(%rdi), %rdx
	movq	88(%rdi), %rsi
	movq	96(%rdi), %rdi
	pushq	8(%rax)
	.cfi_def_cfa_offset 24
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	pushq	16(%rax)
	.cfi_def_cfa_offset 32
	pushq	24(%rax)
	.cfi_def_cfa_offset 40
	pushq	32(%rax)
	.cfi_def_cfa_offset 48
	pushq	40(%rax)
	.cfi_def_cfa_offset 56
	pushq	48(%rax)
	.cfi_def_cfa_offset 64
	call	*104(%rax)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4673:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev:
.LFB4649:
	.cfi_startproc
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rdi)
	jmp	_ZNSt6thread6_StateD2Ev
	.cfi_endproc
.LFE4649:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev:
.LFB4651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rdi)
	movq	%rdi, %rbp
	call	_ZNSt6thread6_StateD2Ev
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.cfi_endproc
.LFE4651:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev
	.section	.text._ZN2ML5Layer9freeLayerEv,"axG",@progbits,_ZN2ML5Layer9freeLayerEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML5Layer9freeLayerEv
	.type	_ZN2ML5Layer9freeLayerEv, @function
_ZN2ML5Layer9freeLayerEv:
.LFB3513:
	.cfi_startproc
	movq	200(%rdi), %r8
	testq	%r8, %r8
	je	.L214
	movq	$0, 200(%rdi)
	movq	%r8, %rdi
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L214:
	ret
	.cfi_endproc
.LFE3513:
	.size	_ZN2ML5Layer9freeLayerEv, .-_ZN2ML5Layer9freeLayerEv
	.section	.text._ZN2ML18ConvolutionalLayer9freeLayerEv,"axG",@progbits,_ZN2ML18ConvolutionalLayer9freeLayerEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML18ConvolutionalLayer9freeLayerEv
	.type	_ZN2ML18ConvolutionalLayer9freeLayerEv, @function
_ZN2ML18ConvolutionalLayer9freeLayerEv:
.LFB3530:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	200(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L216
	movq	$0, 200(%rbx)
	call	_ZdaPv
.L216:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L217
	movq	$0, 344(%rbx)
	call	_ZdaPv
.L217:
	movq	480(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L225
	movq	$0, 480(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L225:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3530:
	.size	_ZN2ML18ConvolutionalLayer9freeLayerEv, .-_ZN2ML18ConvolutionalLayer9freeLayerEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE
	.type	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE, @function
_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE:
.LFB3790:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3790
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$_ZN2ML6Config11NUM_THREADSE, %edx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movq	%rdi, %r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	addq	$-128, %rsp
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	80(%rdi), %r12
	vmovq	344(%rdi), %xmm4
	movq	(%r12), %rax
	vmovq	200(%rdi), %xmm5
	imulq	8(%r12), %rax
	vpinsrq	$1, 64(%rsi), %xmm4, %xmm0
	vpinsrq	$1, 480(%rdi), %xmm5, %xmm1
	movq	%rax, %rbx
	cmpq	_ZN2ML6Config11NUM_THREADSE(%rip), %rbx
	movq	%rax, 112(%rsp)
	movq	%rax, 48(%rsp)
	leaq	112(%rsp), %rax
	cmovnb	%rdx, %rax
	movl	$1, %edx
	movq	(%rax), %rax
	vinserti128	$0x1, %xmm0, %ymm1, %ymm6
	testq	%rax, %rax
	cmovne	%rax, %rdx
	xorl	%ebx, %ebx
	movq	%rdx, 88(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 96(%rsp)
	vmovdqa	%ymm6, (%rsp)
	vzeroupper
	movq	%rdx, %rsi
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L297:
	movq	$0, (%rbx)
	movl	$112, %edi
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	80(%rsp), %rdi
	movq	72(%rsp), %rcx
	movq	%rdi, 16(%rax)
	movq	%rcx, 8(%rax)
	vmovdqa	(%rsp), %ymm2
	leaq	120(%rsp), %rsi
	movq	8(%r14), %rdx
	movq	%rbx, %rdi
	movq	%rdx, 24(%rax)
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	(%r14), %rdx
	movq	%rdx, 32(%rax)
	movq	16(%r12), %rdx
	movq	%rdx, 40(%rax)
	movq	8(%r12), %rdx
	movq	%rdx, 48(%rax)
	movq	16(%r13), %rdx
	movq	%rdx, 56(%rax)
	movq	8(%r13), %rdx
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	%rax, 120(%rsp)
	vmovdqu	%ymm2, 72(%rax)
	vzeroupper
.LEHB1:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE1:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L230
	movq	(%rdi), %rax
	call	*8(%rax)
.L230:
	movq	88(%rsp), %rsi
	addq	$8, %rbx
	cmpq	%rsi, 96(%rsp)
	jnb	.L291
.L301:
	movq	80(%r15), %r12
.L250:
	movq	104(%rsp), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	48(%rsp), %rcx
	movq	224(%r15), %r14
	movq	16(%r15), %r13
	addq	%rcx, 104(%rsp)
	xorl	%edx, %edx
	incq	96(%rsp)
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	divq	%rsi
	movq	%rax, 72(%rsp)
	cmpq	%rbx, 56(%rsp)
	jne	.L297
	movq	%rbx, %rax
	subq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movabsq	$1152921504606846975, %rdi
	sarq	$3, %rax
	cmpq	%rdi, %rax
	je	.L298
	testq	%rax, %rax
	movl	$1, %edx
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	jc	.L260
	testq	%rax, %rax
	jne	.L299
	movq	$0, 56(%rsp)
.L239:
	movq	32(%rsp), %rax
	movl	$112, %edi
	addq	56(%rsp), %rax
	movq	$0, (%rax)
	movq	%rax, 32(%rsp)
.LEHB2:
	call	_Znwm
.LEHE2:
	movq	72(%rsp), %rsi
	vmovdqa	(%rsp), %ymm3
	movq	%rsi, 8(%rax)
	movq	80(%rsp), %rsi
	movq	32(%rsp), %rdi
	movq	%rsi, 16(%rax)
	leaq	120(%rsp), %rsi
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	8(%r14), %rdx
	movq	%rdx, 24(%rax)
	movq	(%r14), %rdx
	movq	%rdx, 32(%rax)
	movq	16(%r12), %rdx
	movq	%rdx, 40(%rax)
	movq	8(%r12), %rdx
	movq	%rdx, 48(%rax)
	movq	16(%r13), %rdx
	movq	%rdx, 56(%rax)
	movq	8(%r13), %rdx
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	%rax, 120(%rsp)
	vmovdqu	%ymm3, 72(%rax)
	vzeroupper
.LEHB3:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE3:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L240
	movq	(%rdi), %rax
	call	*8(%rax)
.L240:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	%rcx, %rax
	cmpq	%rcx, %rbx
	je	.L300
	.p2align 4,,10
	.p2align 3
.L241:
	movq	(%rax), %rcx
	addq	$8, %rax
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	cmpq	%rbx, %rax
	jne	.L241
	subq	64(%rsp), %rax
	addq	56(%rsp), %rax
.L242:
	leaq	8(%rax), %rbx
	movq	64(%rsp), %rax
	testq	%rax, %rax
	je	.L246
	movq	%rax, %rdi
	call	_ZdlPv
.L246:
	movq	56(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	88(%rsp), %rsi
	leaq	(%rax,%rdi,8), %rcx
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	cmpq	%rsi, 96(%rsp)
	jb	.L301
.L291:
	movq	64(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L251
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L252:
	movq	%r12, %rdi
.LEHB4:
	call	_ZNSt6thread4joinEv
	addq	$8, %r12
	cmpq	%r12, %rbx
	jne	.L252
	movq	64(%rsp), %rax
	.p2align 4,,10
	.p2align 3
.L254:
	cmpq	$0, (%rax)
	jne	.L253
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L254
	cmpq	$0, 64(%rsp)
	je	.L295
.L251:
	movq	64(%rsp), %rdi
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L260:
	.cfi_restore_state
	movabsq	$1152921504606846975, %rax
	movq	%rax, 40(%rsp)
.L238:
	leaq	0(,%rax,8), %rdi
	call	_Znwm
	movq	%rax, 56(%rsp)
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L295:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L242
.L299:
	movq	%rax, %rdi
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdi
	cmovbe	%rdi, %rax
	movq	%rax, 40(%rsp)
	jmp	.L238
.L253:
	call	_ZSt9terminatev
.L298:
	movl	$.LC1, %edi
	call	_ZSt20__throw_length_errorPKc
.LEHE4:
.L264:
	movq	%rax, %r12
	jmp	.L232
.L263:
	movq	%rax, %r12
	vzeroupper
	jmp	.L234
.L267:
	movq	%rax, %r12
	jmp	.L243
.L266:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L245
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA3790:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3790-.LLSDATTD3790
.LLSDATTD3790:
	.byte	0x1
	.uleb128 .LLSDACSE3790-.LLSDACSB3790
.LLSDACSB3790:
	.uleb128 .LEHB0-.LFB3790
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L263-.LFB3790
	.uleb128 0
	.uleb128 .LEHB1-.LFB3790
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L264-.LFB3790
	.uleb128 0
	.uleb128 .LEHB2-.LFB3790
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L266-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB3790
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L267-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB3790
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L263-.LFB3790
	.uleb128 0
.LLSDACSE3790:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3790:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC3790
	.type	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE.cold, @function
_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE.cold:
.LFSB3790:
.L232:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L293
	movq	(%rdi), %rax
	vzeroupper
	call	*8(%rax)
.L234:
	movq	64(%rsp), %rax
.L256:
	cmpq	%rax, %rbx
	je	.L302
	cmpq	$0, (%rax)
	jne	.L253
	addq	$8, %rax
	jmp	.L256
.L293:
	vzeroupper
	jmp	.L234
.L243:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L294
	movq	(%rdi), %rax
	vzeroupper
	call	*8(%rax)
.L244:
	movq	%r12, %rdi
.L245:
	call	__cxa_begin_catch
	cmpq	$0, 56(%rsp)
	je	.L303
	movq	56(%rsp), %rdi
	call	_ZdlPv
.L248:
.LEHB5:
	call	__cxa_rethrow
.LEHE5:
.L294:
	vzeroupper
	jmp	.L244
.L303:
	movq	32(%rsp), %rax
	cmpq	$0, (%rax)
	je	.L248
	jmp	.L253
.L265:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	jmp	.L234
.L302:
	cmpq	$0, 64(%rsp)
	je	.L258
	movq	64(%rsp), %rdi
	call	_ZdlPv
.L258:
	movq	%r12, %rdi
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
	.cfi_endproc
.LFE3790:
	.section	.gcc_except_table
	.align 4
.LLSDAC3790:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATTC3790-.LLSDATTDC3790
.LLSDATTDC3790:
	.byte	0x1
	.uleb128 .LLSDACSEC3790-.LLSDACSBC3790
.LLSDACSBC3790:
	.uleb128 .LEHB5-.LCOLDB2
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L265-.LCOLDB2
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB2
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC3790:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATTC3790:
	.section	.text.unlikely
	.text
	.size	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE, .-_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE
	.section	.text.unlikely
	.size	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE.cold, .-_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text._ZN2ML18ConvolutionalLayerD0Ev,"axG",@progbits,_ZN2ML18ConvolutionalLayerD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML18ConvolutionalLayerD0Ev
	.type	_ZN2ML18ConvolutionalLayerD0Ev, @function
_ZN2ML18ConvolutionalLayerD0Ev:
.LFB4655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	$_ZTVN2ML18ConvolutionalLayerE+16, (%rdi)
	movq	%rdi, %rbp
	movq	480(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L305
	call	_ZdaPv
.L305:
	movq	448(%rbp), %rdi
	leaq	464(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L306
	call	_ZdlPv
.L306:
	movq	424(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L307
	call	_ZdlPv
.L307:
	movq	384(%rbp), %rdi
	leaq	400(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L308
	call	_ZdlPv
.L308:
	movq	360(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L309
	call	_ZdlPv
.L309:
	movq	344(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L310
	call	_ZdaPv
.L310:
	movq	312(%rbp), %rdi
	leaq	328(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L311
	call	_ZdlPv
.L311:
	movq	288(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L312
	call	_ZdlPv
.L312:
	movq	248(%rbp), %rdi
	leaq	264(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L313
	call	_ZdlPv
.L313:
	movq	224(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L314
	call	_ZdlPv
.L314:
	movq	200(%rbp), %rdi
	movq	$_ZTVN2ML5LayerE+16, 0(%rbp)
	testq	%rdi, %rdi
	je	.L315
	call	_ZdaPv
.L315:
	movq	168(%rbp), %rdi
	leaq	184(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L316
	call	_ZdlPv
.L316:
	movq	144(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L317
	call	_ZdlPv
.L317:
	movq	104(%rbp), %rdi
	leaq	120(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L318
	call	_ZdlPv
.L318:
	movq	80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L319
	call	_ZdlPv
.L319:
	movq	40(%rbp), %rdi
	leaq	56(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L320
	call	_ZdlPv
.L320:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L321
	call	_ZdlPv
.L321:
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.cfi_endproc
.LFE4655:
	.size	_ZN2ML18ConvolutionalLayerD0Ev, .-_ZN2ML18ConvolutionalLayerD0Ev
	.section	.text._ZN2ML18ConvolutionalLayerD2Ev,"axG",@progbits,_ZN2ML18ConvolutionalLayerD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML18ConvolutionalLayerD2Ev
	.type	_ZN2ML18ConvolutionalLayerD2Ev, @function
_ZN2ML18ConvolutionalLayerD2Ev:
.LFB4653:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	$_ZTVN2ML18ConvolutionalLayerE+16, (%rdi)
	movq	%rdi, %rbx
	movq	480(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L354
	call	_ZdaPv
.L354:
	movq	448(%rbx), %rdi
	leaq	464(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L355
	call	_ZdlPv
.L355:
	movq	424(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L356
	call	_ZdlPv
.L356:
	movq	384(%rbx), %rdi
	leaq	400(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L357
	call	_ZdlPv
.L357:
	movq	360(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L358
	call	_ZdlPv
.L358:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L359
	call	_ZdaPv
.L359:
	movq	312(%rbx), %rdi
	leaq	328(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L360
	call	_ZdlPv
.L360:
	movq	288(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L361
	call	_ZdlPv
.L361:
	movq	248(%rbx), %rdi
	leaq	264(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L362
	call	_ZdlPv
.L362:
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L363
	call	_ZdlPv
.L363:
	movq	200(%rbx), %rdi
	movq	$_ZTVN2ML5LayerE+16, (%rbx)
	testq	%rdi, %rdi
	je	.L364
	call	_ZdaPv
.L364:
	movq	168(%rbx), %rdi
	leaq	184(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L365
	call	_ZdlPv
.L365:
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L366
	call	_ZdlPv
.L366:
	movq	104(%rbx), %rdi
	leaq	120(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L367
	call	_ZdlPv
.L367:
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L368
	call	_ZdlPv
.L368:
	movq	40(%rbx), %rdi
	leaq	56(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L369
	call	_ZdlPv
.L369:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L398
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L398:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4653:
	.size	_ZN2ML18ConvolutionalLayerD2Ev, .-_ZN2ML18ConvolutionalLayerD2Ev
	.weak	_ZN2ML18ConvolutionalLayerD1Ev
	.set	_ZN2ML18ConvolutionalLayerD1Ev,_ZN2ML18ConvolutionalLayerD2Ev
	.section	.text._ZN2ML5Layer10allocLayerEv,"axG",@progbits,_ZN2ML5Layer10allocLayerEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML5Layer10allocLayerEv
	.type	_ZN2ML5Layer10allocLayerEv, @function
_ZN2ML5Layer10allocLayerEv:
.LFB3512:
	.cfi_startproc
	cmpq	$0, 200(%rdi)
	je	.L415
	ret
	.p2align 4,,10
	.p2align 3
.L415:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	144(%rdi), %rax
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L402
	.p2align 4,,10
	.p2align 3
.L403:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L403
.L402:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L404
	andq	$-8, %rdi
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L410
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L410:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L404:
	.cfi_restore_state
	call	__cxa_throw_bad_array_new_length
	.cfi_endproc
.LFE3512:
	.size	_ZN2ML5Layer10allocLayerEv, .-_ZN2ML5Layer10allocLayerEv
	.text
	.align 2
	.p2align 4
	.globl	_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE
	.type	_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE, @function
_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE:
.LFB3802:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	64(%rax), %rax
	cmpq	$_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE, %rax
	jne	.L417
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	80(%rdi), %rax
	movq	16(%rdi), %r8
	movq	200(%rdi), %r12
	movq	8(%rax), %rdx
	movq	224(%rdi), %rcx
	movq	480(%rdi), %r11
	movq	344(%rdi), %r10
	movq	64(%rsi), %rdi
	movq	(%rax), %rsi
	movq	16(%r8), %r9
	imulq	%rdx, %rsi
	movq	8(%r8), %r8
	pushq	%rsi
	.cfi_def_cfa_offset 24
	movq	%r10, %rsi
	pushq	$0
	.cfi_def_cfa_offset 32
	pushq	8(%rcx)
	.cfi_def_cfa_offset 40
	pushq	(%rcx)
	.cfi_def_cfa_offset 48
	movq	%r12, %rcx
	pushq	16(%rax)
	.cfi_def_cfa_offset 56
	pushq	%rdx
	.cfi_def_cfa_offset 64
	movq	%r11, %rdx
	call	_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L417:
	.cfi_restore 12
	jmp	*%rax
	.cfi_endproc
.LFE3802:
	.size	_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE, .-_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE
	.section	.rodata._ZN2ML9LayerData8loadDataENS_4PathE.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"No file path given for required layer data to load from"
	.section	.rodata._ZN2ML9LayerData8loadDataENS_4PathE.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Opened binary file "
.LC5:
	.string	"basic_string::append"
.LC6:
	.string	"Failed to open binary file: "
.LC7:
	.string	"Failed to read file data"
	.section	.text._ZN2ML9LayerData8loadDataENS_4PathE,"axG",@progbits,_ZN2ML9LayerData8loadDataENS_4PathE,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML9LayerData8loadDataENS_4PathE
	.type	_ZN2ML9LayerData8loadDataENS_4PathE, @function
_ZN2ML9LayerData8loadDataENS_4PathE:
.LFB3515:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3515
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	andq	$-32, %rsp
	subq	$576, %rsp
	cmpq	$0, 8(%rsi)
	je	.L487
.L425:
	cmpq	$0, 64(%rbx)
	je	.L488
.L430:
	leaq	288(%rsp), %rdi
	call	_ZNSt8ios_baseC2Ev
	xorl	%eax, %eax
	movw	%ax, 512(%rsp)
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+8(%rip), %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 520(%rsp)
	movq	-24(%r12), %rax
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+16(%rip), %r13
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	movq	$0, 504(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 32(%rsp,%rax)
	movq	$0, 40(%rsp)
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	addq	-24(%r12), %rdi
	vzeroupper
.LEHB7:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE7:
	leaq	48(%rsp), %rdi
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24, 32(%rsp)
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64, 288(%rsp)
.LEHB8:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE8:
	leaq	48(%rsp), %rsi
	leaq	288(%rsp), %rdi
.LEHB9:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	32(%rbx), %rsi
	movl	$12, %edx
	leaq	48(%rsp), %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	32(%rsp), %rdx
	leaq	32(%rsp), %rdi
	addq	-24(%rdx), %rdi
	testq	%rax, %rax
	je	.L489
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE9:
.L432:
	leaq	152(%rsp), %rdi
	call	_ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	je	.L490
	movl	$19, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%rbx), %rdx
	movq	32(%rbx), %rsi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r15
	testq	%r15, %r15
	je	.L491
	cmpb	$0, 56(%r15)
	je	.L439
	movsbl	67(%r15), %esi
.L440:
	movq	%r14, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	movl	$1, %edx
	cmpq	%rcx, %rax
	je	.L448
	.p2align 4,,10
	.p2align 3
.L449:
	imulq	(%rax), %rdx
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L449
.L448:
	imulq	(%rbx), %rdx
	movq	64(%rbx), %rsi
	leaq	32(%rsp), %rdi
	call	_ZNSi4readEPcl
.LEHE10:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L492
	leaq	48(%rsp), %rdi
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24, 32(%rsp)
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64, 288(%rsp)
	movq	$_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16, 48(%rsp)
.LEHB11:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE11:
.L452:
	leaq	152(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev
	leaq	104(%rsp), %rdi
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 48(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%r12), %rax
	leaq	288(%rsp), %rdi
	movq	%r12, 32(%rsp)
	movq	%r13, 32(%rsp,%rax)
	movq	$0, 40(%rsp)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	call	_ZNSt8ios_baseD2Ev
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	.cfi_restore_state
	movq	%r15, %rdi
.LEHB12:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L440
	movl	$10, %esi
	movq	%r15, %rdi
	call	*%rax
.LEHE12:
	movsbl	%al, %esi
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L488:
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L427
	.p2align 4,,10
	.p2align 3
.L428:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L428
.L427:
	imulq	(%rbx), %rdi
	addq	$7, %rdi
	js	.L429
	andq	$-8, %rdi
.LEHB13:
	call	_Znam
	movq	64(%rbx), %rdi
	movq	%rax, 64(%rbx)
	testq	%rdi, %rdi
	je	.L430
	call	_ZdaPv
	jmp	.L430
	.p2align 4,,10
	.p2align 3
.L487:
	movq	%rsi, %r12
	leaq	32(%rdi), %rsi
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE13:
	cmpq	$0, 8(%r12)
	jne	.L425
	movl	$16, %edi
	call	__cxa_allocate_exception
	movq	%rax, %rdi
	movl	$.LC3, %esi
	movq	%rax, %r12
.LEHB14:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE14:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r12, %rdi
.LEHB15:
	call	__cxa_throw
.LEHE15:
	.p2align 4,,10
	.p2align 3
.L489:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB16:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE16:
	jmp	.L432
.L491:
.LEHB17:
	call	_ZSt16__throw_bad_castv
.LEHE17:
.L466:
	jmp	.L436
.L465:
	movq	%rax, %r12
	jmp	.L437
.L490:
	movl	$16, %edi
	call	__cxa_allocate_exception
	movq	%rax, %r13
	movq	40(%rbx), %rax
	leaq	16(%rsp), %r14
	leaq	28(%rax), %rsi
	movq	%rsp, %rdi
	movq	%r14, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movabsq	$4611686018427387903, %rax
	subq	8(%rsp), %rax
	cmpq	$27, %rax
	jbe	.L493
	movl	$28, %edx
	movl	$.LC6, %esi
	movq	%rsp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	movq	40(%rbx), %rdx
	movq	32(%rbx), %rsi
	movq	%rsp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE18:
	movq	%rsp, %rsi
	movq	%r13, %rdi
.LEHB19:
	call	_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE19:
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L447
	call	_ZdlPv
.L447:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r13, %rdi
.LEHB20:
	call	__cxa_throw
.LEHE20:
.L492:
	movl	$16, %edi
	call	__cxa_allocate_exception
	movq	%rax, %rdi
	movl	$.LC7, %esi
	movq	%rax, %r13
.LEHB21:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE21:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r13, %rdi
.LEHB22:
	call	__cxa_throw
.LEHE22:
.L469:
	movq	%rax, %rdi
	jmp	.L451
.L435:
	leaq	48(%rsp), %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
.L436:
	movq	-24(%r12), %rdx
	movq	%r12, 32(%rsp)
	movq	%r13, 32(%rsp,%rdx)
	movq	$0, 40(%rsp)
	movq	%rax, %r12
.L437:
	leaq	288(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	vzeroupper
	call	_ZNSt8ios_baseD2Ev
	movq	%r12, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L464:
	movq	%rax, %r12
	jmp	.L457
.L451:
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L452
.L457:
	movq	%r13, %rdi
	vzeroupper
	call	__cxa_free_exception
.L456:
	leaq	32(%rsp), %rdi
	vzeroupper
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%r12, %rdi
.LEHB24:
	call	_Unwind_Resume
.L462:
	movq	%rax, %r12
	jmp	.L456
.L429:
	call	__cxa_throw_bad_array_new_length
.LEHE24:
.L461:
	movq	%rax, %r13
	jmp	.L453
.L467:
	movq	%rax, %rbx
	jmp	.L435
.L493:
	movl	$.LC5, %edi
.LEHB25:
	call	_ZSt20__throw_length_errorPKc
.LEHE25:
.L453:
	movq	%r12, %rdi
	vzeroupper
	call	__cxa_free_exception
	movq	%r13, %rdi
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L463:
.L486:
	movq	%rax, %r12
	jmp	.L454
.L468:
	jmp	.L486
.L454:
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L481
	vzeroupper
	call	_ZdlPv
.L446:
	movq	%r13, %rdi
	call	__cxa_free_exception
	jmp	.L456
.L481:
	vzeroupper
	jmp	.L446
	.cfi_endproc
.LFE3515:
	.section	.gcc_except_table
	.align 4
.LLSDA3515:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3515-.LLSDATTD3515
.LLSDATTD3515:
	.byte	0x1
	.uleb128 .LLSDACSE3515-.LLSDACSB3515
.LLSDACSB3515:
	.uleb128 .LEHB7-.LFB3515
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L465-.LFB3515
	.uleb128 0
	.uleb128 .LEHB8-.LFB3515
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L466-.LFB3515
	.uleb128 0
	.uleb128 .LEHB9-.LFB3515
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L467-.LFB3515
	.uleb128 0
	.uleb128 .LEHB10-.LFB3515
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L462-.LFB3515
	.uleb128 0
	.uleb128 .LEHB11-.LFB3515
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L469-.LFB3515
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3515
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L462-.LFB3515
	.uleb128 0
	.uleb128 .LEHB13-.LFB3515
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB3515
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L461-.LFB3515
	.uleb128 0
	.uleb128 .LEHB15-.LFB3515
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3515
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L467-.LFB3515
	.uleb128 0
	.uleb128 .LEHB17-.LFB3515
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L462-.LFB3515
	.uleb128 0
	.uleb128 .LEHB18-.LFB3515
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L468-.LFB3515
	.uleb128 0
	.uleb128 .LEHB19-.LFB3515
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L463-.LFB3515
	.uleb128 0
	.uleb128 .LEHB20-.LFB3515
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L462-.LFB3515
	.uleb128 0
	.uleb128 .LEHB21-.LFB3515
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L464-.LFB3515
	.uleb128 0
	.uleb128 .LEHB22-.LFB3515
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L462-.LFB3515
	.uleb128 0
	.uleb128 .LEHB23-.LFB3515
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB3515
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB3515
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L468-.LFB3515
	.uleb128 0
	.uleb128 .LEHB26-.LFB3515
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE3515:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3515:
	.section	.text._ZN2ML9LayerData8loadDataENS_4PathE,"axG",@progbits,_ZN2ML9LayerData8loadDataENS_4PathE,comdat
	.size	_ZN2ML9LayerData8loadDataENS_4PathE, .-_ZN2ML9LayerData8loadDataENS_4PathE
	.section	.text._ZN2ML18ConvolutionalLayer10allocLayerEv,"axG",@progbits,_ZN2ML18ConvolutionalLayer10allocLayerEv,comdat
	.align 2
	.p2align 4
	.weak	_ZN2ML18ConvolutionalLayer10allocLayerEv
	.type	_ZN2ML18ConvolutionalLayer10allocLayerEv, @function
_ZN2ML18ConvolutionalLayer10allocLayerEv:
.LFB3529:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3529
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	cmpq	$0, 200(%rdi)
	je	.L520
.L499:
	leaq	16(%rsp), %rbp
	leaq	280(%rbx), %rdi
	movq	%rsp, %rsi
	movq	%rbp, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
.LEHB27:
	call	_ZN2ML9LayerData8loadDataENS_4PathE
.LEHE27:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L500
	call	_ZdlPv
.L500:
	leaq	416(%rbx), %rdi
	movq	%rsp, %rsi
	movq	%rbp, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
.LEHB28:
	call	_ZN2ML9LayerData8loadDataENS_4PathE
.LEHE28:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L515
	call	_ZdlPv
.L515:
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L520:
	.cfi_restore_state
	movq	144(%rdi), %rax
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L496
	.p2align 4,,10
	.p2align 3
.L497:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L497
.L496:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L498
	andq	$-8, %rdi
.LEHB29:
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L499
	call	_ZdaPv
	jmp	.L499
.L498:
	call	__cxa_throw_bad_array_new_length
.L508:
.L519:
	movq	%rax, %r12
	jmp	.L504
.L507:
	jmp	.L519
.L504:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L514
	vzeroupper
	call	_ZdlPv
.L505:
	movq	%r12, %rdi
	call	_Unwind_Resume
.LEHE29:
.L514:
	vzeroupper
	jmp	.L505
	.cfi_endproc
.LFE3529:
	.section	.gcc_except_table
.LLSDA3529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3529-.LLSDACSB3529
.LLSDACSB3529:
	.uleb128 .LEHB27-.LFB3529
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L507-.LFB3529
	.uleb128 0
	.uleb128 .LEHB28-.LFB3529
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L508-.LFB3529
	.uleb128 0
	.uleb128 .LEHB29-.LFB3529
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE3529:
	.section	.text._ZN2ML18ConvolutionalLayer10allocLayerEv,"axG",@progbits,_ZN2ML18ConvolutionalLayer10allocLayerEv,comdat
	.size	_ZN2ML18ConvolutionalLayer10allocLayerEv, .-_ZN2ML18ConvolutionalLayer10allocLayerEv
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE, @function
_GLOBAL__sub_I__ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE:
.LFB4736:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE4736:
	.size	_GLOBAL__sub_I__ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE, .-_GLOBAL__sub_I__ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE
	.weak	_ZTSN2ML5LayerE
	.section	.rodata._ZTSN2ML5LayerE,"aG",@progbits,_ZTSN2ML5LayerE,comdat
	.align 8
	.type	_ZTSN2ML5LayerE, @object
	.size	_ZTSN2ML5LayerE, 12
_ZTSN2ML5LayerE:
	.string	"N2ML5LayerE"
	.weak	_ZTIN2ML5LayerE
	.section	.rodata._ZTIN2ML5LayerE,"aG",@progbits,_ZTIN2ML5LayerE,comdat
	.align 8
	.type	_ZTIN2ML5LayerE, @object
	.size	_ZTIN2ML5LayerE, 16
_ZTIN2ML5LayerE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN2ML5LayerE
	.weak	_ZTSN2ML18ConvolutionalLayerE
	.section	.rodata._ZTSN2ML18ConvolutionalLayerE,"aG",@progbits,_ZTSN2ML18ConvolutionalLayerE,comdat
	.align 16
	.type	_ZTSN2ML18ConvolutionalLayerE, @object
	.size	_ZTSN2ML18ConvolutionalLayerE, 26
_ZTSN2ML18ConvolutionalLayerE:
	.string	"N2ML18ConvolutionalLayerE"
	.weak	_ZTIN2ML18ConvolutionalLayerE
	.section	.rodata._ZTIN2ML18ConvolutionalLayerE,"aG",@progbits,_ZTIN2ML18ConvolutionalLayerE,comdat
	.align 8
	.type	_ZTIN2ML18ConvolutionalLayerE, @object
	.size	_ZTIN2ML18ConvolutionalLayerE, 24
_ZTIN2ML18ConvolutionalLayerE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN2ML18ConvolutionalLayerE
	.quad	_ZTIN2ML5LayerE
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, 97
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE"
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE
	.section	.rodata._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,"aG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTVN2ML5LayerE
	.section	.rodata._ZTVN2ML5LayerE,"aG",@progbits,_ZTVN2ML5LayerE,comdat
	.align 8
	.type	_ZTVN2ML5LayerE, @object
	.size	_ZTVN2ML5LayerE, 88
_ZTVN2ML5LayerE:
	.quad	0
	.quad	_ZTIN2ML5LayerE
	.quad	0
	.quad	0
	.quad	_ZN2ML5Layer10allocLayerEv
	.quad	_ZN2ML5Layer9freeLayerEv
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	_ZNK2ML5Layer16computeReorderedERKNS_9LayerDataE
	.weak	_ZTVN2ML18ConvolutionalLayerE
	.section	.rodata._ZTVN2ML18ConvolutionalLayerE,"aG",@progbits,_ZTVN2ML18ConvolutionalLayerE,comdat
	.align 8
	.type	_ZTVN2ML18ConvolutionalLayerE, @object
	.size	_ZTVN2ML18ConvolutionalLayerE, 88
_ZTVN2ML18ConvolutionalLayerE:
	.quad	0
	.quad	_ZTIN2ML18ConvolutionalLayerE
	.quad	_ZN2ML18ConvolutionalLayerD1Ev
	.quad	_ZN2ML18ConvolutionalLayerD0Ev
	.quad	_ZN2ML18ConvolutionalLayer10allocLayerEv
	.quad	_ZN2ML18ConvolutionalLayer9freeLayerEv
	.quad	_ZNK2ML18ConvolutionalLayer12computeNaiveERKNS_9LayerDataE
	.quad	_ZNK2ML18ConvolutionalLayer15computeThreadedERKNS_9LayerDataE
	.quad	_ZNK2ML18ConvolutionalLayer12computeTiledERKNS_9LayerDataE
	.quad	_ZNK2ML18ConvolutionalLayer11computeSIMDERKNS_9LayerDataE
	.quad	_ZNK2ML18ConvolutionalLayer16computeReorderedERKNS_9LayerDataE
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE
	.section	.rodata._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,"aG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEE6_M_runEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weak	__cxa_pure_virtual
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-14)"
	.section	.note.GNU-stack,"",@progbits
