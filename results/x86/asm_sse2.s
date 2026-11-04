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
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	movq	16(%rdi), %rdx
	movq	%rdi, -120(%rsp)
	movq	8(%rdx), %rax
	movq	16(%rdx), %r13
	movq	%rsi, -112(%rsp)
	movq	80(%rdi), %rdx
	movq	(%rdx), %rsi
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rdi
	movq	224(%rbx), %rdx
	movq	%rsi, -24(%rsp)
	movq	(%rdx), %r14
	movq	%rcx, -16(%rsp)
	movq	%rdi, -8(%rsp)
	movq	%r14, -88(%rsp)
	movq	8(%rdx), %r14
	testq	%rsi, %rsi
	je	.L4
	testq	%rcx, %rcx
	je	.L4
	testq	%rdi, %rdi
	je	.L4
	movl	%edi, %esi
	movl	%r13d, %edx
	movl	%edi, %r12d
	movl	%r13d, 16(%rsp)
	imull	%ecx, %esi
	movl	%r13d, %ecx
	movl	%edi, %r15d
	movl	$0, 8(%rsp)
	imull	%eax, %ecx
	subl	%r14d, %eax
	movl	$0, -28(%rsp)
	movq	$0, -64(%rsp)
	imull	%r14d, %edx
	imull	%r13d, %eax
	movl	%esi, 12(%rsp)
	movq	480(%rbx), %rsi
	movl	%ecx, 20(%rsp)
	movq	%r13, %rcx
	imull	%r13d, %r12d
	imulq	%r14, %rcx
	movq	%rsi, (%rsp)
	imull	%edi, %edx
	movl	%eax, -40(%rsp)
	movq	200(%rbx), %rax
	movq	%rcx, -80(%rsp)
	movl	%edx, -68(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r12d, %eax
	movq	%r14, %r12
	movl	%eax, %r14d
.L7:
	movq	$0, -56(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, -32(%rsp)
	movl	-28(%rsp), %eax
	movl	%eax, -36(%rsp)
.L19:
	movq	$0, -48(%rsp)
.L17:
	movq	-48(%rsp), %rbx
	movq	(%rsp), %rdi
	cmpq	$0, -88(%rsp)
	movl	%ebx, %eax
	movss	(%rdi,%rax,4), %xmm1
	je	.L8
	movl	%ebx, -72(%rsp)
	movl	-32(%rsp), %ebp
	movq	$0, -96(%rsp)
	movq	$0, -104(%rsp)
	.p2align 4,,10
	.p2align 3
.L9:
	movq	-96(%rsp), %rbx
	movl	-72(%rsp), %r11d
	xorl	%r10d, %r10d
	testq	%r12, %r12
	je	.L11
	.p2align 4,,10
	.p2align 3
.L14:
	testq	%r13, %r13
	je	.L13
	movq	-112(%rsp), %rax
	leal	0(%rbp,%rbx), %r9d
	movl	%r11d, %edx
	movq	64(%rax), %r8
	movq	-120(%rsp), %rax
	movq	344(%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	leal	(%r9,%rax), %esi
	movl	%edx, %ecx
	addq	$1, %rax
	addl	%r15d, %edx
	movss	(%r8,%rsi,4), %xmm0
	mulss	(%rdi,%rcx,4), %xmm0
	addss	%xmm0, %xmm1
	cmpq	%rax, %r13
	jne	.L10
.L13:
	addq	$1, %r10
	addl	%r14d, %r11d
	addq	%r13, %rbx
	cmpq	%r10, %r12
	jne	.L14
.L11:
	movl	-68(%rsp), %edi
	addq	$1, -104(%rsp)
	addl	%edi, -72(%rsp)
	movq	-104(%rsp), %rax
	movq	-80(%rsp), %rdi
	addl	-40(%rsp), %ebp
	addq	%rdi, -96(%rsp)
	cmpq	%rax, -88(%rsp)
	jne	.L9
.L8:
	movq	-48(%rsp), %rbx
	movl	-36(%rsp), %eax
	pxor	%xmm2, %xmm2
	maxss	%xmm2, %xmm1
	movq	24(%rsp), %rdi
	addl	%ebx, %eax
	addq	$1, %rbx
	movl	%eax, %eax
	movq	%rbx, -48(%rsp)
	movss	%xmm1, (%rdi,%rax,4)
	cmpq	%rbx, -8(%rsp)
	jne	.L17
	addq	$1, -56(%rsp)
	movl	16(%rsp), %edi
	addl	%r15d, -36(%rsp)
	movq	-56(%rsp), %rax
	addl	%edi, -32(%rsp)
	cmpq	%rax, -16(%rsp)
	jne	.L19
	movl	12(%rsp), %edi
	addq	$1, -64(%rsp)
	addl	%edi, -28(%rsp)
	movq	-64(%rsp), %rax
	movl	20(%rsp), %edi
	addl	%edi, 8(%rsp)
	cmpq	%rax, -24(%rsp)
	jne	.L7
.L4:
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%rdi, 200(%rsp)
	movq	296(%rsp), %r14
	movq	%rdx, 208(%rsp)
	movq	328(%rsp), %rax
	movq	%r8, 216(%rsp)
	movq	%r9, 32(%rsp)
	cmpq	%rax, 320(%rsp)
	jnb	.L42
	movq	%rcx, %r15
	imulq	%r9, %r8
	movq	%r9, %rbx
	movq	%rsi, %r12
	leaq	0(,%r14,4), %rax
	movq	320(%rsp), %r13
	imulq	312(%rsp), %rbx
	movq	%rax, 64(%rsp)
	imulq	%r14, %r13
	movq	%r8, 144(%rsp)
	imulq	320(%rsp), %rax
	movq	%rbx, 152(%rsp)
	imulq	%r14, %rbx
	movq	%rax, %rcx
	leaq	0(,%r9,4), %rax
	movq	%rax, 72(%rsp)
	movq	%r9, %rax
	addq	%r15, %rcx
	imulq	%r14, %rax
	movq	%rbx, 168(%rsp)
	movq	%rax, 56(%rsp)
	leaq	0(,%r14,8), %rax
	movq	%rax, 80(%rsp)
	leaq	(%r14,%r14), %rax
	movq	%rax, 88(%rsp)
	leaq	-1(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, %rax
	shrq	$2, %rax
	salq	$4, %rax
	movq	%rax, %r10
	movq	%r14, %rax
	andq	$-4, %rax
	testq	%r14, %r14
	movq	%rax, 184(%rsp)
	movl	$1, %eax
	cmovne	%r14, %rax
	movq	%r10, %r14
	movq	296(%rsp), %r10
	movq	%rax, %rdx
	movq	%rax, 160(%rsp)
	shrq	$2, %rax
	salq	$4, %rax
	andq	$-4, %rdx
	movq	%rax, 192(%rsp)
	leaq	-1(%r9), %rax
	movq	%rdx, 176(%rsp)
	movq	%rax, 96(%rsp)
	movq	%r15, %rax
	movq	%r13, %r15
	movq	%rax, %r13
.L73:
	movq	320(%rsp), %rax
	xorl	%edx, %edx
	divq	288(%rsp)
	movq	%rdx, %rbp
	movq	%rax, %rbx
	testq	%r10, %r10
	je	.L63
	movq	64(%rsp), %rdx
	movq	208(%rsp), %rsi
	movq	%rcx, %rdi
	movq	%r10, 296(%rsp)
	call	memcpy
	movq	296(%rsp), %r10
	cmpq	$0, 304(%rsp)
	movq	%rax, %rcx
	je	.L46
	cmpq	$0, 312(%rsp)
	je	.L46
	cmpq	$0, 32(%rsp)
	je	.L46
	movq	216(%rsp), %rax
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 112(%rsp)
	imulq	%rbx, %rax
	addq	%rbp, %rax
	imulq	32(%rsp), %rax
	movq	184(%rsp), %rbp
	movq	%rax, 136(%rsp)
.L48:
	movq	200(%rsp), %rax
	movq	136(%rsp), %rbx
	movq	$0, 16(%rsp)
	leaq	(%rax,%rbx,4), %rbx
	movq	120(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L62:
	cmpq	$2, 32(%rsp)
	jbe	.L79
	movq	40(%rsp), %rsi
	movq	%rbx, 104(%rsp)
	leaq	4(%rbx), %rdx
	movq	$1, 24(%rsp)
	leaq	(%r12,%rsi,4), %r8
	leaq	(%r10,%rsi), %rdi
.L55:
	cmpq	$2, 8(%rsp)
	movss	-4(%rdx), %xmm1
	jbe	.L80
	movq	64(%rsp), %rax
	movss	(%rdx), %xmm3
	movaps	%xmm1, %xmm4
	shufps	$0, %xmm4, %xmm4
	leaq	(%rax,%r8), %r9
	xorl	%eax, %eax
	shufps	$0, %xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L51:
	movups	(%r8,%rax), %xmm0
	movups	(%r9,%rax), %xmm2
	movups	(%rcx,%rax), %xmm6
	mulps	%xmm4, %xmm0
	mulps	%xmm3, %xmm2
	addps	%xmm6, %xmm0
	addps	%xmm2, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%r14, %rax
	jne	.L51
	movq	%rbp, %rax
	cmpq	%rbp, %r10
	je	.L52
.L50:
	movq	%r10, %r9
	subq	%rax, %r9
	cmpq	$1, %r9
	je	.L53
	movsldup	%xmm1, %xmm2
	leaq	(%rax,%rsi), %rbx
	leaq	(%r15,%rax), %r11
	movss	(%rdx), %xmm3
	movq	(%r12,%rbx,4), %xmm0
	leaq	0(%r13,%r11,4), %r11
	leaq	(%rax,%rdi), %rbx
	movsldup	%xmm3, %xmm3
	mulps	%xmm2, %xmm0
	movq	(%r11), %xmm2
	addps	%xmm2, %xmm0
	movq	(%r12,%rbx,4), %xmm2
	mulps	%xmm3, %xmm2
	addps	%xmm2, %xmm0
	movlps	%xmm0, (%r11)
	movq	%r9, %r11
	andq	$-2, %r11
	addq	%r11, %rax
	cmpq	%r11, %r9
	je	.L52
.L53:
	leaq	(%rax,%rsi), %r11
	leaq	(%rcx,%rax,4), %r9
	addq	%rdi, %rax
	mulss	(%r12,%r11,4), %xmm1
	movss	(%r9), %xmm0
	addss	%xmm1, %xmm0
	movss	(%r12,%rax,4), %xmm1
	mulss	(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, (%r9)
.L52:
	movq	24(%rsp), %rax
	movq	88(%rsp), %rbx
	addq	$8, %rdx
	addq	80(%rsp), %r8
	leaq	1(%rax), %r9
	addq	$2, %rax
	addq	%rbx, %rsi
	addq	%rbx, %rdi
	movq	%rax, 24(%rsp)
	cmpq	%rax, 96(%rsp)
	ja	.L55
	movq	104(%rsp), %rbx
.L49:
	movq	48(%rsp), %rax
	movq	32(%rsp), %r11
	leaq	(%r9,%rax), %rdx
	imulq	%r10, %rdx
	.p2align 4,,10
	.p2align 3
.L61:
	cmpq	$2, 8(%rsp)
	movss	(%rbx,%r9,4), %xmm1
	jbe	.L81
	movaps	%xmm1, %xmm2
	leaq	(%r12,%rdx,4), %rsi
	xorl	%eax, %eax
	shufps	$0, %xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L57:
	movups	(%rsi,%rax), %xmm0
	movups	(%rcx,%rax), %xmm5
	mulps	%xmm2, %xmm0
	addps	%xmm5, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%r14, %rax
	jne	.L57
	movq	%rbp, %rax
	cmpq	%rbp, %r10
	je	.L58
.L56:
	movq	%r10, %rsi
	subq	%rax, %rsi
	cmpq	$1, %rsi
	je	.L59
	movsldup	%xmm1, %xmm2
	leaq	(%rax,%rdx), %r8
	leaq	(%r15,%rax), %rdi
	movq	(%r12,%r8,4), %xmm0
	leaq	0(%r13,%rdi,4), %rdi
	mulps	%xmm2, %xmm0
	movq	(%rdi), %xmm2
	addps	%xmm2, %xmm0
	movlps	%xmm0, (%rdi)
	movq	%rsi, %rdi
	andq	$-2, %rdi
	addq	%rdi, %rax
	cmpq	%rdi, %rsi
	je	.L58
.L59:
	leaq	(%rcx,%rax,4), %rsi
	addq	%rdx, %rax
	mulss	(%r12,%rax,4), %xmm1
	movss	(%rsi), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
.L58:
	addq	$1, %r9
	addq	%r10, %rdx
	cmpq	%r11, %r9
	jb	.L61
	movq	32(%rsp), %rdi
	addq	$1, 16(%rsp)
	addq	%rdi, 48(%rsp)
	movq	16(%rsp), %rax
	movq	56(%rsp), %rdi
	addq	72(%rsp), %rbx
	addq	%rdi, 40(%rsp)
	cmpq	%rax, 312(%rsp)
	jne	.L62
	movq	144(%rsp), %rdx
	addq	$1, 112(%rsp)
	addq	%rdx, 136(%rsp)
	movq	112(%rsp), %rax
	movq	152(%rsp), %rdx
	addq	%rdx, 128(%rsp)
	movq	168(%rsp), %rdx
	addq	%rdx, 120(%rsp)
	cmpq	%rax, 304(%rsp)
	ja	.L48
.L46:
	cmpq	$3, %r10
	jbe	.L82
	movq	192(%rsp), %rax
	pxor	%xmm1, %xmm1
	leaq	(%rcx,%rax), %rdx
	movq	%rcx, %rax
.L65:
	movups	(%rax), %xmm7
	movaps	%xmm1, %xmm0
	addq	$16, %rax
	cmpltps	%xmm7, %xmm0
	andps	%xmm7, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L65
	movq	176(%rsp), %rax
	cmpq	%rax, 160(%rsp)
	je	.L63
.L64:
	leaq	0(,%rax,4), %rdx
	pxor	%xmm1, %xmm1
	leaq	(%rcx,%rdx), %rsi
	movss	(%rsi), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	leaq	1(%rax), %rsi
	cmpq	%rsi, %r10
	jbe	.L63
	leaq	4(%rdx,%rcx), %rsi
	addq	$2, %rax
	movss	(%rsi), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	cmpq	%r10, %rax
	jnb	.L63
	leaq	8(%rdx,%rcx), %rax
	movss	(%rax), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.L63:
	addq	$1, 320(%rsp)
	addq	64(%rsp), %rcx
	addq	%r10, %r15
	movq	320(%rsp), %rax
	cmpq	%rax, 328(%rsp)
	jne	.L73
.L42:
	addq	$232, %rsp
	.cfi_remember_state
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
.L81:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L56
.L79:
	xorl	%r9d, %r9d
	jmp	.L49
.L80:
	xorl	%eax, %eax
	jmp	.L50
.L82:
	xorl	%eax, %eax
	jmp	.L64
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
	movq	224(%rdi), %rcx
	movq	200(%rdi), %r11
	movq	8(%rax), %rdx
	movq	(%rax), %rbx
	movq	480(%rdi), %r10
	movq	16(%rsi), %r9
	imulq	%rdx, %rbx
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rdx
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
	subq	$272, %rsp
	.cfi_def_cfa_offset 328
	movq	16(%rdi), %rax
	movq	344(%rdx), %r15
	movq	200(%rdx), %r14
	movq	8(%rax), %rbx
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	80(%rdi), %rax
	movq	%rbx, 80(%rsp)
	movq	(%rax), %rdi
	movq	8(%rax), %r11
	movq	16(%rax), %rbx
	movq	224(%rdx), %rax
	movq	%rdi, 88(%rsp)
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%r11, 96(%rsp)
	movq	%rbx, -96(%rsp)
	movq	%rax, -16(%rsp)
	movq	_ZN2ML6Config9TILE_SIZEE(%rip), %rax
	movq	%rcx, 104(%rsp)
	movl	$1, %ecx
	testq	%rax, %rax
	cmovne	%rax, %rcx
	imulq	%r11, %rdi
	movq	64(%rsi), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 192(%rsp)
	movq	480(%rdx), %rax
	movq	%rdi, 112(%rsp)
	testq	%rdi, %rdi
	je	.L107
	testq	%rbx, %rbx
	je	.L106
	movq	%rbx, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	xorl	%r8d, %r8d
	shrq	$2, %rdx
	subq	$1, %rdi
	leaq	0(,%rbx,4), %r12
	andq	$-4, %rbx
	salq	$4, %rdx
	movq	%rdi, -104(%rsp)
	movq	%rbx, %rcx
	leaq	4(%rax), %r13
	movq	%rdx, -112(%rsp)
	leaq	0(,%rbx,4), %rdx
	leaq	2(%rcx), %rbp
	leaq	(%rax,%rdx), %r9
	leaq	4(%rax,%rdx), %r10
	leaq	8(%rax,%rdx), %r11
	leaq	1(%rbx), %rbx
	xorl	%edx, %edx
.L109:
	movq	%rsi, %rdi
	subq	%r13, %rdi
	cmpq	$8, %rdi
	jbe	.L152
	xorl	%edi, %edi
	cmpq	$2, -104(%rsp)
	jbe	.L152
.L110:
	movups	(%rax,%rdi), %xmm4
	movups	%xmm4, (%rsi,%rdi)
	addq	$16, %rdi
	cmpq	-112(%rsp), %rdi
	jne	.L110
	cmpq	%rcx, -96(%rsp)
	je	.L113
	movss	(%r9), %xmm0
	leaq	(%rcx,%rdx), %rdi
	movss	%xmm0, (%r14,%rdi,4)
	cmpq	%rbx, -96(%rsp)
	jbe	.L113
	movss	(%r10), %xmm0
	leaq	(%rbx,%rdx), %rdi
	movss	%xmm0, (%r14,%rdi,4)
	cmpq	%rbp, -96(%rsp)
	jbe	.L113
	movss	(%r11), %xmm0
	leaq	0(%rbp,%rdx), %rdi
	movss	%xmm0, (%r14,%rdi,4)
.L113:
	addq	$1, %r8
	addq	%r12, %rsi
	addq	-96(%rsp), %rdx
	cmpq	112(%rsp), %r8
	jne	.L109
	cmpq	$0, 24(%rsp)
	je	.L117
.L143:
	cmpq	$0, 88(%rsp)
	je	.L117
	movq	96(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L117
	cmpq	$0, 104(%rsp)
	je	.L117
	movq	-16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L117
	movq	-96(%rsp), %rcx
	movq	32(%rsp), %rax
	movq	$0, 176(%rsp)
	movq	$0, 40(%rsp)
	movq	80(%rsp), %rbx
	imulq	%rcx, %rax
	movq	%rcx, %rsi
	imulq	%rdx, %rsi
	movq	%rax, 248(%rsp)
	movq	24(%rsp), %rax
	movq	%rsi, 232(%rsp)
	leaq	0(,%rcx,4), %rsi
	imulq	%rax, %rbx
	movq	%rsi, -80(%rsp)
	movq	%rbx, 224(%rsp)
	salq	$2, %rbx
	movq	%rbx, 200(%rsp)
	movq	%rax, %rbx
	imulq	%rcx, %rax
	movq	%rax, 8(%rsp)
	imulq	%rdi, %rax
	movq	%rax, 208(%rsp)
	movq	%rbx, %rax
	salq	$2, %rax
	movq	%rax, (%rsp)
	movq	%r14, %rax
	movq	%r15, %r14
	movq	%rax, %r15
.L133:
	movq	40(%rsp), %rbx
	movq	32(%rsp), %rsi
	movq	$0, 168(%rsp)
	movq	$0, 48(%rsp)
	movq	-96(%rsp), %rcx
	movq	%rbx, %rax
	movq	%rbx, -88(%rsp)
	addq	%rsi, %rbx
	cmpq	%rbx, %rcx
	movq	%rbx, %rsi
	movq	%rbx, 40(%rsp)
	movq	%rax, %rbx
	cmovbe	%rcx, %rsi
	leaq	0(,%rax,4), %rax
	leaq	(%r15,%rsi,4), %rdx
	movq	%rsi, 184(%rsp)
	subq	%rbx, %rsi
	subq	%rax, %rdx
	addq	%r14, %rax
	movq	%rax, 16(%rsp)
	leaq	-1(%rsi), %rax
	movq	%rax, -72(%rsp)
	movq	%rsi, %rax
	shrq	$2, %rax
	movq	%rdx, 240(%rsp)
	salq	$4, %rax
	movq	%rax, %r13
	movq	%rsi, %rax
	andq	$-4, %rax
	movq	%rax, -64(%rsp)
	addq	%rbx, %rax
	movq	%rax, -56(%rsp)
	movq	%r15, %rax
	movq	%r14, %r15
	movq	%rsi, %r14
	movq	%rax, %r12
.L132:
	movq	48(%rsp), %rax
	movq	32(%rsp), %rbx
	movq	%rax, %rdx
	addq	%rbx, %rax
	movq	24(%rsp), %rbx
	movq	%rax, 48(%rsp)
	cmpq	%rax, %rbx
	cmovbe	%rbx, %rax
	cmpq	%rdx, %rax
	jbe	.L118
	movq	-88(%rsp), %rbx
	cmpq	%rbx, 184(%rsp)
	jbe	.L118
	movq	192(%rsp), %rsi
	salq	$2, %rax
	salq	$2, %rdx
	movq	%rbx, 160(%rsp)
	movq	$0, 152(%rsp)
	subq	%rax, %rdx
	addq	%rax, %rsi
	movq	%rdx, -8(%rsp)
	movq	%r14, %rax
	subq	-64(%rsp), %rax
	movq	%rsi, 216(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 56(%rsp)
	movq	%rax, -48(%rsp)
	movq	%r12, %rax
	movq	%r15, %r12
	movq	%rax, %r15
.L119:
	movq	160(%rsp), %rbx
	movq	240(%rsp), %rcx
	leaq	0(,%rbx,4), %rax
	movq	%rbx, -104(%rsp)
	movq	96(%rsp), %rbx
	leaq	(%r15,%rax), %rdx
	leaq	(%rax,%rcx), %rbp
	movq	152(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 72(%rsp)
	addq	%rbx, %rax
	movq	%rax, 256(%rsp)
	movq	%r13, %rax
	movq	%r14, %r13
	movq	%rax, %r14
.L131:
	movq	-104(%rsp), %rax
	movq	176(%rsp), %r9
	movq	$0, 64(%rsp)
	movq	216(%rsp), %rbx
	movq	136(%rsp), %rsi
	addq	%rax, %r9
	leaq	(%r15,%rax,4), %rax
	movq	%rax, -24(%rsp)
	movq	168(%rsp), %rax
	leaq	(%rbx,%rsi,4), %rbx
	movq	%rbx, 120(%rsp)
	movq	%rax, 128(%rsp)
.L120:
	movq	128(%rsp), %rax
	movq	$0, -40(%rsp)
	movq	%rax, -32(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, -112(%rsp)
	.p2align 4,,10
	.p2align 3
.L129:
	movq	16(%rsp), %rax
	movq	-32(%rsp), %rsi
	movq	-8(%rsp), %r8
	addq	-112(%rsp), %r8
	leaq	(%rax,%rsi,4), %rcx
	.p2align 4,,10
	.p2align 3
.L128:
	movq	-88(%rsp), %rax
	leaq	4(%rcx), %r10
	movss	(%r8), %xmm1
	leaq	(%rsi,%rax), %rdi
	movq	%rdx, %rax
	subq	%r10, %rax
	cmpq	$8, %rax
	jbe	.L145
	cmpq	$1, %r13
	je	.L145
	cmpq	$2, -72(%rsp)
	jbe	.L146
	movaps	%xmm1, %xmm2
	xorl	%eax, %eax
	shufps	$0, %xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L123:
	movups	(%rcx,%rax), %xmm0
	movups	(%rdx,%rax), %xmm3
	mulps	%xmm2, %xmm0
	addps	%xmm3, %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r14, %rax
	jne	.L123
	movq	-64(%rsp), %rbx
	cmpq	%rbx, %r13
	je	.L127
	movq	-48(%rsp), %rax
	cmpq	$1, %rax
	movq	%rax, %r11
	movq	-56(%rsp), %rax
	je	.L125
.L122:
	movsldup	%xmm1, %xmm2
	addq	%rbx, %rdi
	movq	-104(%rsp), %r10
	movq	(%r12,%rdi,4), %xmm0
	movq	%r11, %rdi
	addq	%rbx, %r10
	andq	$-2, %rdi
	leaq	(%r15,%r10,4), %r10
	addq	%rdi, %rax
	mulps	%xmm2, %xmm0
	movq	(%r10), %xmm2
	addps	%xmm2, %xmm0
	movlps	%xmm0, (%r10)
	cmpq	%r11, %rdi
	je	.L127
.L125:
	leaq	(%rax,%r9), %rdi
	addq	%rsi, %rax
	mulss	(%r12,%rax,4), %xmm1
	leaq	(%r15,%rdi,4), %rdi
	addss	(%rdi), %xmm1
	movss	%xmm1, (%rdi)
.L127:
	addq	$4, %r8
	addq	-80(%rsp), %rcx
	addq	-96(%rsp), %rsi
	cmpq	%r8, -112(%rsp)
	jne	.L128
	addq	$1, -40(%rsp)
	movq	(%rsp), %rsi
	movq	8(%rsp), %rcx
	addq	%rsi, -112(%rsp)
	addq	%rcx, -32(%rsp)
	movq	-40(%rsp), %rax
	cmpq	%rax, -16(%rsp)
	jne	.L129
	addq	$1, 64(%rsp)
	movq	200(%rsp), %rsi
	movq	208(%rsp), %rcx
	addq	%rsi, 120(%rsp)
	addq	%rcx, 128(%rsp)
	movq	64(%rsp), %rax
	cmpq	%rax, 104(%rsp)
	jne	.L120
	movq	-80(%rsp), %rax
	addq	$1, 72(%rsp)
	movq	24(%rsp), %rsi
	movq	-96(%rsp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rbp
	addq	%rcx, -104(%rsp)
	movq	72(%rsp), %rax
	addq	%rsi, 136(%rsp)
	cmpq	256(%rsp), %rax
	jne	.L131
	movq	%r14, %rax
	movq	80(%rsp), %rsi
	movq	%r13, %r14
	addq	$1, 56(%rsp)
	addq	%rsi, 144(%rsp)
	movq	224(%rsp), %rcx
	movq	%rax, %r13
	movq	232(%rsp), %rsi
	addq	%rcx, 152(%rsp)
	addq	%rsi, 160(%rsp)
	movq	56(%rsp), %rax
	cmpq	%rax, 88(%rsp)
	jne	.L119
	movq	%r15, %rax
	movq	%r12, %r15
	movq	%rax, %r12
.L118:
	movq	248(%rsp), %rbx
	addq	%rbx, 168(%rsp)
	movq	48(%rsp), %rbx
	cmpq	%rbx, 24(%rsp)
	ja	.L132
	movq	32(%rsp), %rbx
	movq	%r15, %r14
	subq	%rbx, 176(%rsp)
	movq	%r12, %r15
	movq	40(%rsp), %rbx
	cmpq	%rbx, -96(%rsp)
	ja	.L133
	movq	%r12, %r14
.L117:
	movq	-96(%rsp), %rax
	imulq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L106
	leaq	-1(%rax), %rdx
	cmpq	$2, %rdx
	jbe	.L148
	movq	%rax, %rdx
	movq	%r14, %rcx
	pxor	%xmm1, %xmm1
	shrq	$2, %rdx
	salq	$4, %rdx
	addq	%r14, %rdx
.L135:
	movups	(%rcx), %xmm5
	movaps	%xmm1, %xmm0
	addq	$16, %rcx
	cmpltps	%xmm5, %xmm0
	andps	%xmm5, %xmm0
	movups	%xmm0, -16(%rcx)
	cmpq	%rdx, %rcx
	jne	.L135
	movq	%rax, %rdx
	andq	$-4, %rdx
	testb	$3, %al
	je	.L106
.L134:
	leaq	0(,%rdx,4), %rcx
	pxor	%xmm1, %xmm1
	leaq	(%r14,%rcx), %rsi
	movss	(%rsi), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	leaq	1(%rdx), %rsi
	cmpq	%rax, %rsi
	jnb	.L106
	leaq	4(%r14,%rcx), %rsi
	addq	$2, %rdx
	movss	(%rsi), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	cmpq	%rdx, %rax
	jbe	.L106
	leaq	8(%r14,%rcx), %rax
	movss	(%rax), %xmm0
	maxss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.L106:
	addq	$272, %rsp
	.cfi_remember_state
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
.L152:
	.cfi_restore_state
	xorl	%edi, %edi
.L112:
	movss	(%rax,%rdi,4), %xmm0
	movss	%xmm0, (%rsi,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, -96(%rsp)
	jne	.L112
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L145:
	movq	-24(%rsp), %rax
	movq	%rcx, %rdi
	.p2align 4,,10
	.p2align 3
.L121:
	movss	(%rdi), %xmm0
	addq	$4, %rax
	addq	$4, %rdi
	mulss	%xmm1, %xmm0
	addss	-4(%rax), %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rbp, %rax
	jne	.L121
	jmp	.L127
.L146:
	movq	-88(%rsp), %rax
	movq	%r13, %r11
	xorl	%ebx, %ebx
	jmp	.L122
.L107:
	cmpq	$0, -96(%rsp)
	je	.L106
	cmpq	$0, 24(%rsp)
	jne	.L143
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L148:
	xorl	%edx, %edx
	jmp	.L134
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
	movq	%rdi, %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	72(%rdi), %rcx
	movq	80(%rdi), %rdx
	movq	88(%rdi), %rsi
	movq	96(%rdi), %rdi
	pushq	8(%rax)
	.cfi_def_cfa_offset 24
	movq	56(%rax), %r9
	pushq	16(%rax)
	.cfi_def_cfa_offset 32
	movq	64(%rax), %r8
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
	movq	%rdi, %rbp
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rdi)
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
	je	.L199
	movq	$0, 200(%rdi)
	movq	%r8, %rdi
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L199:
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
	je	.L202
	movq	$0, 200(%rbx)
	call	_ZdaPv
.L202:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L203
	movq	$0, 344(%rbx)
	call	_ZdaPv
.L203:
	movq	480(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L201
	movq	$0, 480(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L201:
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$_ZN2ML6Config11NUM_THREADSE, %edx
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	64(%rsi), %rax
	movq	80(%rdi), %r12
	movq	$0, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	344(%rdi), %rax
	movq	$0, 40(%rsp)
	movq	%rax, 72(%rsp)
	movq	480(%rdi), %rax
	movq	$0, 8(%rsp)
	movq	%rax, 80(%rsp)
	movq	200(%rdi), %rax
	movq	%rax, 88(%rsp)
	movq	(%r12), %rax
	imulq	8(%r12), %rax
	movq	%rax, %rbx
	movq	%rax, 112(%rsp)
	cmpq	_ZN2ML6Config11NUM_THREADSE(%rip), %rbx
	movq	%rax, 56(%rsp)
	leaq	112(%rsp), %rax
	cmovnb	%rdx, %rax
	movl	$1, %edx
	movq	(%rax), %rax
	testq	%rax, %rax
	cmovne	%rax, %rdx
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	%rdx, 16(%rsp)
	movq	%rdx, %rsi
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L279:
	movq	$0, (%rbx)
	movl	$112, %edi
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rcx
	movq	%rbx, %rdi
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	88(%rsp), %xmm0
	pinsrq	$1, 80(%rsp), %xmm0
	movq	%rsi, 8(%rax)
	leaq	120(%rsp), %rsi
	movq	%rcx, 16(%rax)
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
	movups	%xmm0, 72(%rax)
	movq	72(%rsp), %xmm0
	pinsrq	$1, 64(%rsp), %xmm0
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movups	%xmm0, 88(%rax)
	movq	%rax, 120(%rsp)
.LEHB1:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE1:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L215
	movq	(%rdi), %rax
	call	*8(%rax)
.L215:
	movq	16(%rsp), %rdi
	addq	$8, %rbx
	cmpq	%rdi, 8(%rsp)
	jnb	.L276
.L283:
	movq	80(%rbp), %r12
	movq	%rdi, %rsi
.L235:
	movq	%r15, %rax
	xorl	%edx, %edx
	addq	56(%rsp), %r15
	addq	$1, 8(%rsp)
	divq	%rsi
	movq	224(%rbp), %r14
	movq	16(%rbp), %r13
	xorl	%edx, %edx
	movq	%rax, 24(%rsp)
	movq	%r15, %rax
	divq	%rsi
	movq	%rax, 32(%rsp)
	cmpq	%rbx, 48(%rsp)
	jne	.L279
	movabsq	$1152921504606846975, %rdi
	movq	%rbx, %rax
	subq	40(%rsp), %rax
	movq	%rax, 104(%rsp)
	sarq	$3, %rax
	cmpq	%rdi, %rax
	je	.L280
	testq	%rax, %rax
	movl	$1, %edx
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	movq	%rax, 96(%rsp)
	jc	.L245
	testq	%rax, %rax
	jne	.L281
	movq	$0, 48(%rsp)
.L224:
	movq	104(%rsp), %rax
	addq	48(%rsp), %rax
	movl	$112, %edi
	movq	$0, (%rax)
	movq	%rax, 104(%rsp)
.LEHB2:
	call	_Znwm
.LEHE2:
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rcx
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	88(%rsp), %xmm0
	movq	104(%rsp), %rdi
	pinsrq	$1, 80(%rsp), %xmm0
	movq	%rsi, 16(%rax)
	leaq	120(%rsp), %rsi
	movq	%rcx, 8(%rax)
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
	movups	%xmm0, 72(%rax)
	movq	72(%rsp), %xmm0
	pinsrq	$1, 64(%rsp), %xmm0
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movups	%xmm0, 88(%rax)
	movq	%rax, 120(%rsp)
.LEHB3:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE3:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L225
	movq	(%rdi), %rax
	call	*8(%rax)
.L225:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	%rcx, %rax
	cmpq	%rcx, %rbx
	je	.L282
	.p2align 4,,10
	.p2align 3
.L226:
	movq	(%rax), %rcx
	addq	$8, %rax
	addq	$8, %rdx
	movq	%rcx, -8(%rdx)
	cmpq	%rbx, %rax
	jne	.L226
	subq	40(%rsp), %rax
	addq	48(%rsp), %rax
.L227:
	leaq	8(%rax), %rbx
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.L231
	movq	%rax, %rdi
	call	_ZdlPv
.L231:
	movq	48(%rsp), %rax
	movq	96(%rsp), %rdi
	leaq	(%rax,%rdi,8), %rdi
	movq	%rax, 40(%rsp)
	movq	%rdi, 48(%rsp)
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jb	.L283
.L276:
	movq	40(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L236
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L237:
	movq	%rbp, %rdi
.LEHB4:
	call	_ZNSt6thread4joinEv
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.L237
	movq	40(%rsp), %rax
	.p2align 4,,10
	.p2align 3
.L239:
	cmpq	$0, (%rax)
	jne	.L238
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L239
	cmpq	$0, 40(%rsp)
	je	.L212
.L236:
	movq	40(%rsp), %rdi
	addq	$136, %rsp
	.cfi_remember_state
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
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L245:
	.cfi_restore_state
	movabsq	$1152921504606846975, %rax
	movq	%rax, 96(%rsp)
.L223:
	leaq	0(,%rax,8), %rdi
	call	_Znwm
	movq	%rax, 48(%rsp)
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L212:
	addq	$136, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L282:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L227
.L281:
	movq	%rax, %rdi
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdi
	cmovbe	%rdi, %rax
	movq	%rax, 96(%rsp)
	jmp	.L223
.L238:
	call	_ZSt9terminatev
.L280:
	movl	$.LC1, %edi
	call	_ZSt20__throw_length_errorPKc
.LEHE4:
.L249:
	movq	%rax, %rbp
	jmp	.L217
.L248:
	movq	%rax, %rbp
	jmp	.L219
.L252:
	movq	%rax, %rbp
	jmp	.L228
.L251:
	movq	%rax, %rdi
	jmp	.L230
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
	.uleb128 .L248-.LFB3790
	.uleb128 0
	.uleb128 .LEHB1-.LFB3790
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L249-.LFB3790
	.uleb128 0
	.uleb128 .LEHB2-.LFB3790
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L251-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB3790
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L252-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB3790
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L248-.LFB3790
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
.L217:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L219
	movq	(%rdi), %rax
	call	*8(%rax)
.L219:
	movq	40(%rsp), %rax
.L241:
	cmpq	%rax, %rbx
	je	.L284
	cmpq	$0, (%rax)
	jne	.L238
	addq	$8, %rax
	jmp	.L241
.L228:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L229
	movq	(%rdi), %rax
	call	*8(%rax)
.L229:
	movq	%rbp, %rdi
.L230:
	call	__cxa_begin_catch
	cmpq	$0, 48(%rsp)
	je	.L285
	movq	48(%rsp), %rdi
	call	_ZdlPv
.L233:
.LEHB5:
	call	__cxa_rethrow
.LEHE5:
.L284:
	cmpq	$0, 40(%rsp)
	je	.L243
	movq	40(%rsp), %rdi
	call	_ZdlPv
.L243:
	movq	%rbp, %rdi
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L285:
	movq	104(%rsp), %rax
	cmpq	$0, (%rax)
	je	.L233
	jmp	.L238
.L250:
	movq	%rax, %rbp
	call	__cxa_end_catch
	jmp	.L219
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
	.uleb128 .L250-.LCOLDB2
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
	movq	%rdi, %rbp
	movq	$_ZTVN2ML18ConvolutionalLayerE+16, (%rdi)
	movq	480(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L287
	call	_ZdaPv
.L287:
	movq	448(%rbp), %rdi
	leaq	464(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L288
	call	_ZdlPv
.L288:
	movq	424(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L289
	call	_ZdlPv
.L289:
	movq	384(%rbp), %rdi
	leaq	400(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L290
	call	_ZdlPv
.L290:
	movq	360(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L291
	call	_ZdlPv
.L291:
	movq	344(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L292
	call	_ZdaPv
.L292:
	movq	312(%rbp), %rdi
	leaq	328(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L293
	call	_ZdlPv
.L293:
	movq	288(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L294
	call	_ZdlPv
.L294:
	movq	248(%rbp), %rdi
	leaq	264(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L295
	call	_ZdlPv
.L295:
	movq	224(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L296
	call	_ZdlPv
.L296:
	movq	200(%rbp), %rdi
	movq	$_ZTVN2ML5LayerE+16, 0(%rbp)
	testq	%rdi, %rdi
	je	.L297
	call	_ZdaPv
.L297:
	movq	168(%rbp), %rdi
	leaq	184(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L298
	call	_ZdlPv
.L298:
	movq	144(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L299
	call	_ZdlPv
.L299:
	movq	104(%rbp), %rdi
	leaq	120(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L300
	call	_ZdlPv
.L300:
	movq	80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L301
	call	_ZdlPv
.L301:
	movq	40(%rbp), %rdi
	leaq	56(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L302
	call	_ZdlPv
.L302:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L303
	call	_ZdlPv
.L303:
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
	movq	%rdi, %rbx
	movq	$_ZTVN2ML18ConvolutionalLayerE+16, (%rdi)
	movq	480(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L336
	call	_ZdaPv
.L336:
	movq	448(%rbx), %rdi
	leaq	464(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L337
	call	_ZdlPv
.L337:
	movq	424(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L338
	call	_ZdlPv
.L338:
	movq	384(%rbx), %rdi
	leaq	400(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L339
	call	_ZdlPv
.L339:
	movq	360(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L340
	call	_ZdlPv
.L340:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L341
	call	_ZdaPv
.L341:
	movq	312(%rbx), %rdi
	leaq	328(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L342
	call	_ZdlPv
.L342:
	movq	288(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L343
	call	_ZdlPv
.L343:
	movq	248(%rbx), %rdi
	leaq	264(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L344
	call	_ZdlPv
.L344:
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L345
	call	_ZdlPv
.L345:
	movq	200(%rbx), %rdi
	movq	$_ZTVN2ML5LayerE+16, (%rbx)
	testq	%rdi, %rdi
	je	.L346
	call	_ZdaPv
.L346:
	movq	168(%rbx), %rdi
	leaq	184(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L347
	call	_ZdlPv
.L347:
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L348
	call	_ZdlPv
.L348:
	movq	104(%rbx), %rdi
	leaq	120(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L349
	call	_ZdlPv
.L349:
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L350
	call	_ZdlPv
.L350:
	movq	40(%rbx), %rdi
	leaq	56(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L351
	call	_ZdlPv
.L351:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L335
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L335:
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
	je	.L395
	ret
	.p2align 4,,10
	.p2align 3
.L395:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	144(%rdi), %rax
	movq	%rdi, %rbx
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L383
	.p2align 4,,10
	.p2align 3
.L384:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L384
.L383:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L385
	andq	$-8, %rdi
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L381
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L381:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L385:
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
	jne	.L397
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
	movq	8(%r8), %r8
	imulq	%rdx, %rsi
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
.L397:
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$560, %rsp
	.cfi_def_cfa_offset 608
	cmpq	$0, 8(%rsi)
	je	.L463
.L404:
	cmpq	$0, 64(%rbx)
	je	.L464
.L409:
	leaq	288(%rsp), %rdi
	call	_ZNSt8ios_baseC2Ev
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+8(%rip), %rbp
	xorl	%eax, %eax
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movw	%ax, 512(%rsp)
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+16(%rip), %r12
	leaq	32(%rsp), %rdi
	movups	%xmm0, 520(%rsp)
	movups	%xmm0, 536(%rsp)
	movq	-24(%rbp), %rax
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	movq	$0, 504(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%r12, 32(%rsp,%rax)
	movq	$0, 40(%rsp)
	addq	-24(%rbp), %rdi
.LEHB7:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE7:
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24, 32(%rsp)
	leaq	48(%rsp), %rdi
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
	je	.L465
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE9:
.L411:
	leaq	152(%rsp), %rdi
	call	_ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	je	.L466
	movl	$19, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	40(%rbx), %rdx
	movq	32(%rbx), %rsi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r14
	testq	%r14, %r14
	je	.L467
	cmpb	$0, 56(%r14)
	je	.L418
	movsbl	67(%r14), %esi
.L419:
	movq	%r13, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	movl	$1, %edx
	cmpq	%rcx, %rax
	je	.L427
	.p2align 4,,10
	.p2align 3
.L428:
	imulq	(%rax), %rdx
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L428
.L427:
	imulq	(%rbx), %rdx
	movq	64(%rbx), %rsi
	leaq	32(%rsp), %rdi
	call	_ZNSi4readEPcl
.LEHE10:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L468
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24, 32(%rsp)
	leaq	48(%rsp), %rdi
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64, 288(%rsp)
	movq	$_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16, 48(%rsp)
.LEHB11:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE11:
.L431:
	leaq	152(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev
	leaq	104(%rsp), %rdi
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 48(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbp), %rax
	movq	%rbp, 32(%rsp)
	leaq	288(%rsp), %rdi
	movq	%r12, 32(%rsp,%rax)
	movq	$0, 40(%rsp)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	call	_ZNSt8ios_baseD2Ev
	addq	$560, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	.cfi_restore_state
	movq	%r14, %rdi
.LEHB12:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L419
	movl	$10, %esi
	movq	%r14, %rdi
	call	*%rax
.LEHE12:
	movsbl	%al, %esi
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L464:
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L406
	.p2align 4,,10
	.p2align 3
.L407:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L407
.L406:
	imulq	(%rbx), %rdi
	addq	$7, %rdi
	js	.L408
	andq	$-8, %rdi
.LEHB13:
	call	_Znam
	movq	64(%rbx), %rdi
	movq	%rax, 64(%rbx)
	testq	%rdi, %rdi
	je	.L409
	call	_ZdaPv
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L463:
	movq	%rsi, %rbp
	leaq	32(%rdi), %rsi
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE13:
	cmpq	$0, 8(%rbp)
	jne	.L404
	movl	$16, %edi
	call	__cxa_allocate_exception
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB14:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE14:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%rbp, %rdi
.LEHB15:
	call	__cxa_throw
.LEHE15:
	.p2align 4,,10
	.p2align 3
.L465:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB16:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE16:
	jmp	.L411
.L467:
.LEHB17:
	call	_ZSt16__throw_bad_castv
.LEHE17:
.L445:
	jmp	.L415
.L444:
	movq	%rax, %rbp
	jmp	.L416
.L466:
	movl	$16, %edi
	leaq	16(%rsp), %r13
	call	__cxa_allocate_exception
	movq	%rsp, %rdi
	movq	%r13, (%rsp)
	movq	%rax, %r12
	movq	40(%rbx), %rax
	movb	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	28(%rax), %rsi
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movabsq	$4611686018427387903, %rax
	subq	8(%rsp), %rax
	cmpq	$27, %rax
	jbe	.L469
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
	movq	%r12, %rdi
.LEHB19:
	call	_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE19:
	movq	(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L426
	call	_ZdlPv
.L426:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r12, %rdi
.LEHB20:
	call	__cxa_throw
.LEHE20:
.L468:
	movl	$16, %edi
	call	__cxa_allocate_exception
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB21:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE21:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r12, %rdi
.LEHB22:
	call	__cxa_throw
.LEHE22:
.L448:
	movq	%rax, %rdi
	jmp	.L430
.L414:
	leaq	48(%rsp), %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
.L415:
	movq	-24(%rbp), %rdx
	movq	%rbp, 32(%rsp)
	movq	%rax, %rbp
	movq	%r12, 32(%rsp,%rdx)
	movq	$0, 40(%rsp)
.L416:
	leaq	288(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbp, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L443:
	movq	%rax, %rbp
	jmp	.L436
.L430:
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L431
.L433:
	movq	(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L436
	call	_ZdlPv
.L436:
	movq	%r12, %rdi
	call	__cxa_free_exception
.L435:
	leaq	32(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rdi
.LEHB24:
	call	_Unwind_Resume
.L441:
	movq	%rax, %rbp
	jmp	.L435
.L408:
	call	__cxa_throw_bad_array_new_length
.LEHE24:
.L440:
	movq	%rax, %r12
	jmp	.L432
.L446:
	movq	%rax, %rbx
	jmp	.L414
.L469:
	movl	$.LC5, %edi
.LEHB25:
	call	_ZSt20__throw_length_errorPKc
.LEHE25:
.L432:
	movq	%rbp, %rdi
	call	__cxa_free_exception
	movq	%r12, %rdi
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L442:
.L462:
	movq	%rax, %rbp
	jmp	.L433
.L447:
	jmp	.L462
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
	.uleb128 .L444-.LFB3515
	.uleb128 0
	.uleb128 .LEHB8-.LFB3515
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L445-.LFB3515
	.uleb128 0
	.uleb128 .LEHB9-.LFB3515
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L446-.LFB3515
	.uleb128 0
	.uleb128 .LEHB10-.LFB3515
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L441-.LFB3515
	.uleb128 0
	.uleb128 .LEHB11-.LFB3515
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L448-.LFB3515
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3515
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L441-.LFB3515
	.uleb128 0
	.uleb128 .LEHB13-.LFB3515
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB3515
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L440-.LFB3515
	.uleb128 0
	.uleb128 .LEHB15-.LFB3515
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3515
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L446-.LFB3515
	.uleb128 0
	.uleb128 .LEHB17-.LFB3515
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L441-.LFB3515
	.uleb128 0
	.uleb128 .LEHB18-.LFB3515
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L447-.LFB3515
	.uleb128 0
	.uleb128 .LEHB19-.LFB3515
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L442-.LFB3515
	.uleb128 0
	.uleb128 .LEHB20-.LFB3515
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L441-.LFB3515
	.uleb128 0
	.uleb128 .LEHB21-.LFB3515
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L443-.LFB3515
	.uleb128 0
	.uleb128 .LEHB22-.LFB3515
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L441-.LFB3515
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
	.uleb128 .L447-.LFB3515
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
	je	.L493
.L475:
	leaq	16(%rsp), %rbp
	leaq	280(%rbx), %rdi
	movq	%rsp, %rsi
	movq	$0, 8(%rsp)
	movq	%rbp, (%rsp)
	movb	$0, 16(%rsp)
.LEHB27:
	call	_ZN2ML9LayerData8loadDataENS_4PathE
.LEHE27:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L476
	call	_ZdlPv
.L476:
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
	je	.L470
	call	_ZdlPv
.L470:
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
.L493:
	.cfi_restore_state
	movq	144(%rdi), %rax
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L472
	.p2align 4,,10
	.p2align 3
.L473:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L473
.L472:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L474
	andq	$-8, %rdi
.LEHB29:
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L475
	call	_ZdaPv
	jmp	.L475
.L474:
	call	__cxa_throw_bad_array_new_length
.L484:
.L492:
	movq	%rax, %r12
	jmp	.L480
.L483:
	jmp	.L492
.L480:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L481
	call	_ZdlPv
.L481:
	movq	%r12, %rdi
	call	_Unwind_Resume
.LEHE29:
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
	.uleb128 .L483-.LFB3529
	.uleb128 0
	.uleb128 .LEHB28-.LFB3529
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L484-.LFB3529
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
