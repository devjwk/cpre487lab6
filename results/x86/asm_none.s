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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%rdi, 88(%rsp)
	movq	184(%rsp), %rbx
	movq	%rdx, 96(%rsp)
	movq	216(%rsp), %rax
	movq	%r8, 104(%rsp)
	cmpq	%rax, 208(%rsp)
	jnb	.L42
	imulq	%r9, %r8
	movq	%rbx, %r12
	movq	%rsi, %r13
	movq	%r9, %r15
	movq	208(%rsp), %rax
	imulq	%r9, %r12
	leaq	0(,%rbx,4), %r14
	imulq	%r14, %rax
	movq	%r8, 64(%rsp)
	addq	%rax, %rcx
	movq	200(%rsp), %rax
	imulq	%r9, %rax
	movq	%rax, 72(%rsp)
	imulq	%rbx, %rax
	movq	%rax, 80(%rsp)
	leaq	0(,%r9,4), %rax
	movq	%rax, 16(%rsp)
	leaq	0(,%rbx,8), %rax
	movq	%rax, 8(%rsp)
	leaq	-1(%r9), %rax
	movq	%rax, 24(%rsp)
.L59:
	movq	208(%rsp), %rax
	xorl	%edx, %edx
	divq	176(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.L55
	movq	96(%rsp), %rsi
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memcpy
	cmpq	$0, 192(%rsp)
	movq	%rax, %rcx
	je	.L46
	cmpq	$0, 200(%rsp)
	je	.L46
	testq	%r15, %r15
	je	.L46
	movq	$0, 56(%rsp)
	movq	104(%rsp), %rax
	movq	$0, 48(%rsp)
	imulq	%rbp, %rax
	addq	32(%rsp), %rax
	movq	$0, 32(%rsp)
	imulq	%r15, %rax
	movq	%rax, 40(%rsp)
.L48:
	movq	88(%rsp), %rax
	movq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	56(%rsp), %r10
	movq	48(%rsp), %rbp
	leaq	(%rax,%rdx,4), %rdx
	leaq	(%rbx,%r10), %r11
	.p2align 4,,10
	.p2align 3
.L54:
	cmpq	$2, %r15
	jbe	.L65
	leaq	0(%r13,%r10,4), %rdi
	leaq	0(%r13,%r11,4), %rsi
	movl	$1, %r8d
.L51:
	movss	-4(%rdx,%r8,4), %xmm3
	movss	(%rdx,%r8,4), %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L50:
	movss	(%rsi,%rax,4), %xmm1
	movss	(%rdi,%rax,4), %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm3, %xmm0
	addss	(%rcx,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L50
	leaq	1(%r8), %rax
	addq	8(%rsp), %rdi
	addq	$2, %r8
	addq	8(%rsp), %rsi
	cmpq	%r8, 24(%rsp)
	ja	.L51
.L49:
	leaq	(%rax,%rbp), %rdi
	imulq	%r14, %rdi
	addq	%r13, %rdi
	.p2align 4,,10
	.p2align 3
.L53:
	movss	(%rdx,%rax,4), %xmm1
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L52:
	movss	(%rdi,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	addss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %rbx
	jne	.L52
	addq	$1, %rax
	addq	%r14, %rdi
	cmpq	%r15, %rax
	jb	.L53
	addq	$1, %r9
	addq	16(%rsp), %rdx
	addq	%r15, %rbp
	addq	%r12, %r10
	addq	%r12, %r11
	cmpq	%r9, 200(%rsp)
	jne	.L54
	movq	64(%rsp), %rdi
	addq	$1, 32(%rsp)
	addq	%rdi, 40(%rsp)
	movq	32(%rsp), %rax
	movq	72(%rsp), %rdi
	addq	%rdi, 48(%rsp)
	movq	80(%rsp), %rdi
	addq	%rdi, 56(%rsp)
	cmpq	%rax, 192(%rsp)
	ja	.L48
.L46:
	xorl	%eax, %eax
.L58:
	movss	(%rcx,%rax,4), %xmm0
	pxor	%xmm4, %xmm4
	maxss	%xmm4, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rbx
	ja	.L58
.L55:
	addq	$1, 208(%rsp)
	addq	%r14, %rcx
	movq	208(%rsp), %rax
	cmpq	%rax, 216(%rsp)
	jne	.L59
.L42:
	addq	$120, %rsp
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
.L65:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L49
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
	movq	%rdi, %rax
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	16(%rdi), %rdx
	movq	64(%rsi), %rsi
	movq	8(%rdx), %rbx
	movq	%rsi, 56(%rsp)
	movq	344(%rax), %rsi
	movq	%rbx, -56(%rsp)
	movq	16(%rdx), %rbx
	movq	80(%rdi), %rdx
	movq	%rsi, 64(%rsp)
	movq	%rbx, -120(%rsp)
	movq	480(%rax), %rsi
	movq	(%rdx), %rbx
	movq	8(%rdx), %rdi
	movq	16(%rdx), %r15
	movq	224(%rax), %rdx
	movq	%rbx, -48(%rsp)
	movq	200(%rax), %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %r13
	movq	%rdi, -40(%rsp)
	movq	_ZN2ML6Config9TILE_SIZEE(%rip), %rdx
	movq	%rax, -96(%rsp)
	movq	%rcx, -32(%rsp)
	movl	$1, %ecx
	testq	%rdx, %rdx
	cmovne	%rdx, %rcx
	imulq	%rdi, %rbx
	movq	%rcx, -72(%rsp)
	movq	%rbx, 24(%rsp)
	testq	%rbx, %rbx
	je	.L82
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%r15, %r15
	je	.L81
.L83:
	movq	-96(%rsp), %rax
	leaq	(%rax,%rcx,4), %rdi
	xorl	%eax, %eax
.L85:
	movss	(%rsi,%rax,4), %xmm0
	movss	%xmm0, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L85
	addq	$1, %rdx
	addq	%r15, %rcx
	cmpq	24(%rsp), %rdx
	jne	.L83
	cmpq	$0, -120(%rsp)
	je	.L88
.L102:
	cmpq	$0, -48(%rsp)
	je	.L88
	movq	-40(%rsp), %rax
	testq	%rax, %rax
	je	.L88
	cmpq	$0, -32(%rsp)
	je	.L88
	testq	%r13, %r13
	je	.L88
	movq	-72(%rsp), %rbx
	imulq	%r15, %rax
	leaq	0(,%r15,4), %rdi
	movq	$0, -112(%rsp)
	movq	%rdi, 88(%rsp)
	imulq	%r15, %rbx
	movq	%rax, 104(%rsp)
	movq	-120(%rsp), %rax
	movq	%rbx, 136(%rsp)
	movq	-56(%rsp), %rbx
	movq	%rax, %r14
	leaq	0(,%rax,4), %r12
	imulq	%r15, %r14
	imulq	%rax, %rbx
	movq	%r14, %rax
	movq	%rbx, 112(%rsp)
	salq	$2, %rbx
	movq	%rbx, 72(%rsp)
	movq	%r13, %rbx
	imulq	%r14, %rbx
	movq	%r15, %r14
	movq	%r12, %r15
	movq	%r13, %r12
	movq	%rax, %r13
	movq	%rbx, 80(%rsp)
.L98:
	movq	-112(%rsp), %rbx
	movq	-72(%rsp), %rdi
	movq	$0, 32(%rsp)
	movq	$0, -104(%rsp)
	movq	%rbx, %rax
	movq	%rbx, 40(%rsp)
	addq	%rdi, %rbx
	movq	-96(%rsp), %rdi
	cmpq	%rbx, %r14
	movq	%rbx, -112(%rsp)
	cmovbe	%r14, %rbx
	salq	$2, %rax
	leaq	(%rdi,%rax), %rsi
	movq	%rbx, 48(%rsp)
	leaq	(%rdi,%rbx,4), %rbx
	movq	%rbx, 128(%rsp)
	movq	64(%rsp), %rbx
	movq	%rsi, 120(%rsp)
	leaq	(%rbx,%rax), %rbp
	movq	%r15, %rbx
	movq	%r14, %r15
	movq	%r13, %r14
	movq	%r12, %r13
	movq	%rbp, %r12
.L97:
	movq	-104(%rsp), %rax
	movq	-72(%rsp), %rdi
	movq	%rax, %rdx
	addq	%rdi, %rax
	movq	-120(%rsp), %rdi
	movq	%rax, -104(%rsp)
	cmpq	%rax, %rdi
	cmovbe	%rdi, %rax
	cmpq	%rdx, %rax
	jbe	.L89
	movq	40(%rsp), %rsi
	cmpq	%rsi, 48(%rsp)
	jbe	.L89
	movq	56(%rsp), %rdi
	salq	$2, %rax
	salq	$2, %rdx
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	subq	%rax, %rdx
	addq	%rax, %rdi
	movq	$0, (%rsp)
	movq	%rdx, %rbp
	movq	%rdi, 96(%rsp)
	movq	$0, -88(%rsp)
.L90:
	movq	(%rsp), %rax
	movq	-40(%rsp), %rdi
	leaq	0(,%rax,4), %rcx
	movq	120(%rsp), %rax
	leaq	(%rax,%rcx), %r9
	movq	16(%rsp), %rax
	addq	128(%rsp), %rcx
	movq	%rax, -8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, -64(%rsp)
	addq	%rdi, %rax
	movq	%rax, 144(%rsp)
.L96:
	movq	96(%rsp), %rax
	movq	-8(%rsp), %rdi
	movq	$0, -80(%rsp)
	leaq	(%rax,%rdi,4), %rax
	movq	%rax, -24(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, -16(%rsp)
.L91:
	movq	-16(%rsp), %r11
	movq	-24(%rsp), %r8
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L94:
	leaq	(%r8,%rbp), %rsi
	movq	%r11, %rdi
	.p2align 4,,10
	.p2align 3
.L93:
	movss	(%rsi), %xmm1
	leaq	(%r12,%rdi,4), %rdx
	movq	%r9, %rax
	.p2align 4,,10
	.p2align 3
.L92:
	movss	(%rdx), %xmm0
	addq	$4, %rax
	addq	$4, %rdx
	mulss	%xmm1, %xmm0
	addss	-4(%rax), %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rcx, %rax
	jne	.L92
	addq	$4, %rsi
	addq	%r15, %rdi
	cmpq	%rsi, %r8
	jne	.L93
	addq	$1, %r10
	addq	%rbx, %r8
	addq	%r14, %r11
	cmpq	%r10, %r13
	jne	.L94
	movq	72(%rsp), %rdx
	addq	$1, -80(%rsp)
	addq	%rdx, -24(%rsp)
	movq	-80(%rsp), %rdi
	movq	80(%rsp), %rdx
	addq	%rdx, -16(%rsp)
	cmpq	%rdi, -32(%rsp)
	jne	.L91
	movq	88(%rsp), %rdi
	addq	$1, -64(%rsp)
	movq	-120(%rsp), %rsi
	addq	%rsi, -8(%rsp)
	leaq	(%rax,%rdi), %rcx
	addq	%rdi, %r9
	movq	-64(%rsp), %rax
	cmpq	144(%rsp), %rax
	jne	.L96
	movq	104(%rsp), %rsi
	addq	$1, -88(%rsp)
	addq	%rsi, (%rsp)
	movq	-88(%rsp), %rax
	movq	-56(%rsp), %rsi
	addq	%rsi, 8(%rsp)
	movq	112(%rsp), %rsi
	addq	%rsi, 16(%rsp)
	cmpq	%rax, -48(%rsp)
	jne	.L90
.L89:
	movq	136(%rsp), %rdi
	addq	%rdi, 32(%rsp)
	movq	-104(%rsp), %rdi
	cmpq	%rdi, -120(%rsp)
	ja	.L97
	movq	%r13, %r12
	movq	%r14, %r13
	movq	%r15, %r14
	movq	%rbx, %r15
	cmpq	-112(%rsp), %r14
	ja	.L98
	movq	%r14, %r15
.L88:
	movq	24(%rsp), %rdx
	imulq	%r15, %rdx
	testq	%rdx, %rdx
	je	.L81
	movq	-96(%rsp), %rax
	leaq	(%rax,%rdx,4), %rdx
.L101:
	movss	(%rax), %xmm0
	pxor	%xmm2, %xmm2
	addq	$4, %rax
	maxss	%xmm2, %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rdx, %rax
	jne	.L101
.L81:
	addq	$152, %rsp
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
.L82:
	.cfi_restore_state
	testq	%r15, %r15
	je	.L81
	cmpq	$0, -120(%rsp)
	jne	.L102
	jmp	.L81
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
	je	.L137
	movq	$0, 200(%rdi)
	movq	%r8, %rdi
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L137:
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
	je	.L140
	movq	$0, 200(%rbx)
	call	_ZdaPv
.L140:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L141
	movq	$0, 344(%rbx)
	call	_ZdaPv
.L141:
	movq	480(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L139
	movq	$0, 480(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L139:
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
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L217:
	movq	$0, (%rbx)
	movl	$112, %edi
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rcx
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	80(%rsp), %rdi
	movq	%rsi, 8(%rax)
	movq	88(%rsp), %rsi
	movq	%rcx, 16(%rax)
	movq	8(%r14), %rdx
	movq	72(%rsp), %rcx
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
	movq	%rsi, 72(%rax)
	movq	64(%rsp), %rsi
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	%rdi, 80(%rax)
	movq	%rbx, %rdi
	movq	%rsi, 96(%rax)
	leaq	120(%rsp), %rsi
	movq	%rcx, 88(%rax)
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movq	%rax, 120(%rsp)
.LEHB1:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE1:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L153
	movq	(%rdi), %rax
	call	*8(%rax)
.L153:
	movq	16(%rsp), %rdi
	addq	$8, %rbx
	cmpq	%rdi, 8(%rsp)
	jnb	.L214
.L221:
	movq	80(%rbp), %r12
	movq	%rdi, %rsi
.L173:
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
	jne	.L217
	movabsq	$1152921504606846975, %rcx
	movq	%rbx, %rax
	subq	40(%rsp), %rax
	movq	%rax, 104(%rsp)
	sarq	$3, %rax
	cmpq	%rcx, %rax
	je	.L218
	testq	%rax, %rax
	movl	$1, %edx
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	movq	%rax, 96(%rsp)
	jc	.L183
	testq	%rax, %rax
	jne	.L219
	movq	$0, 48(%rsp)
.L162:
	movq	104(%rsp), %rax
	addq	48(%rsp), %rax
	movl	$112, %edi
	movq	$0, (%rax)
	movq	%rax, 104(%rsp)
.LEHB2:
	call	_Znwm
.LEHE2:
	movq	32(%rsp), %rcx
	movq	88(%rsp), %rsi
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKfS4_S4_PfmmmmmmmmES4_S4_S4_S5_mmmmmmmmEEEEEE+16, (%rax)
	movq	104(%rsp), %rdi
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	8(%r14), %rdx
	movq	80(%rsp), %rcx
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
	movq	%rsi, 72(%rax)
	movq	72(%rsp), %rsi
	movq	%rcx, 80(%rax)
	movq	64(%rsp), %rcx
	movq	%rdx, 64(%rax)
	xorl	%edx, %edx
	movq	%rsi, 88(%rax)
	leaq	120(%rsp), %rsi
	movq	%rcx, 96(%rax)
	movq	$_ZN2MLL10convPixelsEPKfS1_S1_Pfmmmmmmmm, 104(%rax)
	movq	%rax, 120(%rsp)
.LEHB3:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE3:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L163
	movq	(%rdi), %rax
	call	*8(%rax)
.L163:
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rdx
	movq	%rdi, %rax
	cmpq	%rdi, %rbx
	je	.L220
	.p2align 4,,10
	.p2align 3
.L164:
	movq	(%rax), %rcx
	addq	$8, %rax
	addq	$8, %rdx
	movq	%rcx, -8(%rdx)
	cmpq	%rbx, %rax
	jne	.L164
	subq	40(%rsp), %rax
	addq	48(%rsp), %rax
.L165:
	leaq	8(%rax), %rbx
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.L169
	movq	%rax, %rdi
	call	_ZdlPv
.L169:
	movq	48(%rsp), %rax
	movq	96(%rsp), %rdi
	leaq	(%rax,%rdi,8), %rdi
	movq	%rax, 40(%rsp)
	movq	%rdi, 48(%rsp)
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jb	.L221
.L214:
	movq	40(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L174
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L175:
	movq	%rbp, %rdi
.LEHB4:
	call	_ZNSt6thread4joinEv
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.L175
	movq	40(%rsp), %rax
	.p2align 4,,10
	.p2align 3
.L177:
	cmpq	$0, (%rax)
	jne	.L176
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L177
	cmpq	$0, 40(%rsp)
	je	.L150
.L174:
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
.L183:
	.cfi_restore_state
	movabsq	$1152921504606846975, %rax
	movq	%rax, 96(%rsp)
.L161:
	leaq	0(,%rax,8), %rdi
	call	_Znwm
	movq	%rax, 48(%rsp)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L150:
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
.L220:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L165
.L219:
	movq	%rax, %rdi
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdi
	cmovbe	%rdi, %rax
	movq	%rax, 96(%rsp)
	jmp	.L161
.L176:
	call	_ZSt9terminatev
.L218:
	movl	$.LC1, %edi
	call	_ZSt20__throw_length_errorPKc
.LEHE4:
.L187:
	movq	%rax, %rbp
	jmp	.L155
.L186:
	movq	%rax, %rbp
	jmp	.L157
.L190:
	movq	%rax, %rbp
	jmp	.L166
.L189:
	movq	%rax, %rdi
	jmp	.L168
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
	.uleb128 .L186-.LFB3790
	.uleb128 0
	.uleb128 .LEHB1-.LFB3790
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L187-.LFB3790
	.uleb128 0
	.uleb128 .LEHB2-.LFB3790
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L189-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB3790
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L190-.LFB3790
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB3790
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L186-.LFB3790
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
.L155:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L157
	movq	(%rdi), %rax
	call	*8(%rax)
.L157:
	movq	40(%rsp), %rax
.L179:
	cmpq	%rax, %rbx
	je	.L222
	cmpq	$0, (%rax)
	jne	.L176
	addq	$8, %rax
	jmp	.L179
.L166:
	movq	120(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L167
	movq	(%rdi), %rax
	call	*8(%rax)
.L167:
	movq	%rbp, %rdi
.L168:
	call	__cxa_begin_catch
	cmpq	$0, 48(%rsp)
	je	.L223
	movq	48(%rsp), %rdi
	call	_ZdlPv
.L171:
.LEHB5:
	call	__cxa_rethrow
.LEHE5:
.L222:
	cmpq	$0, 40(%rsp)
	je	.L181
	movq	40(%rsp), %rdi
	call	_ZdlPv
.L181:
	movq	%rbp, %rdi
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L223:
	movq	104(%rsp), %rax
	cmpq	$0, (%rax)
	je	.L171
	jmp	.L176
.L188:
	movq	%rax, %rbp
	call	__cxa_end_catch
	jmp	.L157
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
	.uleb128 .L188-.LCOLDB2
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
	je	.L225
	call	_ZdaPv
.L225:
	movq	448(%rbp), %rdi
	leaq	464(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L226
	call	_ZdlPv
.L226:
	movq	424(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L227
	call	_ZdlPv
.L227:
	movq	384(%rbp), %rdi
	leaq	400(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L228
	call	_ZdlPv
.L228:
	movq	360(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L229
	call	_ZdlPv
.L229:
	movq	344(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L230
	call	_ZdaPv
.L230:
	movq	312(%rbp), %rdi
	leaq	328(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L231
	call	_ZdlPv
.L231:
	movq	288(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L232
	call	_ZdlPv
.L232:
	movq	248(%rbp), %rdi
	leaq	264(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L233
	call	_ZdlPv
.L233:
	movq	224(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L234
	call	_ZdlPv
.L234:
	movq	200(%rbp), %rdi
	movq	$_ZTVN2ML5LayerE+16, 0(%rbp)
	testq	%rdi, %rdi
	je	.L235
	call	_ZdaPv
.L235:
	movq	168(%rbp), %rdi
	leaq	184(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L236
	call	_ZdlPv
.L236:
	movq	144(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L237
	call	_ZdlPv
.L237:
	movq	104(%rbp), %rdi
	leaq	120(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L238
	call	_ZdlPv
.L238:
	movq	80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L239
	call	_ZdlPv
.L239:
	movq	40(%rbp), %rdi
	leaq	56(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L240
	call	_ZdlPv
.L240:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L241
	call	_ZdlPv
.L241:
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
	je	.L274
	call	_ZdaPv
.L274:
	movq	448(%rbx), %rdi
	leaq	464(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L275
	call	_ZdlPv
.L275:
	movq	424(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L276
	call	_ZdlPv
.L276:
	movq	384(%rbx), %rdi
	leaq	400(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L277
	call	_ZdlPv
.L277:
	movq	360(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L278
	call	_ZdlPv
.L278:
	movq	344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L279
	call	_ZdaPv
.L279:
	movq	312(%rbx), %rdi
	leaq	328(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L280
	call	_ZdlPv
.L280:
	movq	288(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L281
	call	_ZdlPv
.L281:
	movq	248(%rbx), %rdi
	leaq	264(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L282
	call	_ZdlPv
.L282:
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L283
	call	_ZdlPv
.L283:
	movq	200(%rbx), %rdi
	movq	$_ZTVN2ML5LayerE+16, (%rbx)
	testq	%rdi, %rdi
	je	.L284
	call	_ZdaPv
.L284:
	movq	168(%rbx), %rdi
	leaq	184(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L285
	call	_ZdlPv
.L285:
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L286
	call	_ZdlPv
.L286:
	movq	104(%rbx), %rdi
	leaq	120(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L287
	call	_ZdlPv
.L287:
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L288
	call	_ZdlPv
.L288:
	movq	40(%rbx), %rdi
	leaq	56(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L289
	call	_ZdlPv
.L289:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L273
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L273:
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
	je	.L333
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	144(%rdi), %rax
	movq	%rdi, %rbx
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L321
	.p2align 4,,10
	.p2align 3
.L322:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L322
.L321:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L323
	andq	$-8, %rdi
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L319
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L319:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L323:
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
	jne	.L335
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
.L335:
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
	je	.L401
.L342:
	cmpq	$0, 64(%rbx)
	je	.L402
.L347:
	leaq	288(%rsp), %rdi
	call	_ZNSt8ios_baseC2Ev
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+8(%rip), %rbp
	xorl	%eax, %eax
	xorl	%esi, %esi
	movw	%ax, 512(%rsp)
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE+16(%rip), %r12
	leaq	32(%rsp), %rdi
	movq	-24(%rbp), %rax
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	movq	$0, 504(%rsp)
	movq	$0, 520(%rsp)
	movq	$0, 528(%rsp)
	movq	$0, 536(%rsp)
	movq	$0, 544(%rsp)
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
	je	.L403
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE9:
.L349:
	leaq	152(%rsp), %rdi
	call	_ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	je	.L404
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
	je	.L405
	cmpb	$0, 56(%r14)
	je	.L356
	movsbl	67(%r14), %esi
.L357:
	movq	%r13, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	movl	$1, %edx
	cmpq	%rcx, %rax
	je	.L365
	.p2align 4,,10
	.p2align 3
.L366:
	imulq	(%rax), %rdx
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L366
.L365:
	imulq	(%rbx), %rdx
	movq	64(%rbx), %rsi
	leaq	32(%rsp), %rdi
	call	_ZNSi4readEPcl
.LEHE10:
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L406
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24, 32(%rsp)
	leaq	48(%rsp), %rdi
	movq	$_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64, 288(%rsp)
	movq	$_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16, 48(%rsp)
.LEHB11:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE11:
.L369:
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
.L356:
	.cfi_restore_state
	movq	%r14, %rdi
.LEHB12:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L357
	movl	$10, %esi
	movq	%r14, %rdi
	call	*%rax
.LEHE12:
	movsbl	%al, %esi
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L402:
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L344
	.p2align 4,,10
	.p2align 3
.L345:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L345
.L344:
	imulq	(%rbx), %rdi
	addq	$7, %rdi
	js	.L346
	andq	$-8, %rdi
.LEHB13:
	call	_Znam
	movq	64(%rbx), %rdi
	movq	%rax, 64(%rbx)
	testq	%rdi, %rdi
	je	.L347
	call	_ZdaPv
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L401:
	movq	%rsi, %rbp
	leaq	32(%rdi), %rsi
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE13:
	cmpq	$0, 8(%rbp)
	jne	.L342
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
.L403:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB16:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE16:
	jmp	.L349
.L405:
.LEHB17:
	call	_ZSt16__throw_bad_castv
.LEHE17:
.L383:
	jmp	.L353
.L382:
	movq	%rax, %rbp
	jmp	.L354
.L404:
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
	jbe	.L407
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
	je	.L364
	call	_ZdlPv
.L364:
	movl	$_ZNSt13runtime_errorD1Ev, %edx
	movl	$_ZTISt13runtime_error, %esi
	movq	%r12, %rdi
.LEHB20:
	call	__cxa_throw
.LEHE20:
.L406:
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
.L386:
	movq	%rax, %rdi
	jmp	.L368
.L352:
	leaq	48(%rsp), %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
.L353:
	movq	-24(%rbp), %rdx
	movq	%rbp, 32(%rsp)
	movq	%rax, %rbp
	movq	%r12, 32(%rsp,%rdx)
	movq	$0, 40(%rsp)
.L354:
	leaq	288(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 288(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbp, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L381:
	movq	%rax, %rbp
	jmp	.L374
.L368:
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L369
.L371:
	movq	(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L374
	call	_ZdlPv
.L374:
	movq	%r12, %rdi
	call	__cxa_free_exception
.L373:
	leaq	32(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rdi
.LEHB24:
	call	_Unwind_Resume
.L379:
	movq	%rax, %rbp
	jmp	.L373
.L346:
	call	__cxa_throw_bad_array_new_length
.LEHE24:
.L378:
	movq	%rax, %r12
	jmp	.L370
.L384:
	movq	%rax, %rbx
	jmp	.L352
.L407:
	movl	$.LC5, %edi
.LEHB25:
	call	_ZSt20__throw_length_errorPKc
.LEHE25:
.L370:
	movq	%rbp, %rdi
	call	__cxa_free_exception
	movq	%r12, %rdi
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L380:
.L400:
	movq	%rax, %rbp
	jmp	.L371
.L385:
	jmp	.L400
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
	.uleb128 .L382-.LFB3515
	.uleb128 0
	.uleb128 .LEHB8-.LFB3515
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L383-.LFB3515
	.uleb128 0
	.uleb128 .LEHB9-.LFB3515
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L384-.LFB3515
	.uleb128 0
	.uleb128 .LEHB10-.LFB3515
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L379-.LFB3515
	.uleb128 0
	.uleb128 .LEHB11-.LFB3515
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L386-.LFB3515
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3515
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L379-.LFB3515
	.uleb128 0
	.uleb128 .LEHB13-.LFB3515
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB3515
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L378-.LFB3515
	.uleb128 0
	.uleb128 .LEHB15-.LFB3515
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3515
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L384-.LFB3515
	.uleb128 0
	.uleb128 .LEHB17-.LFB3515
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L379-.LFB3515
	.uleb128 0
	.uleb128 .LEHB18-.LFB3515
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L385-.LFB3515
	.uleb128 0
	.uleb128 .LEHB19-.LFB3515
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L380-.LFB3515
	.uleb128 0
	.uleb128 .LEHB20-.LFB3515
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L379-.LFB3515
	.uleb128 0
	.uleb128 .LEHB21-.LFB3515
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L381-.LFB3515
	.uleb128 0
	.uleb128 .LEHB22-.LFB3515
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L379-.LFB3515
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
	.uleb128 .L385-.LFB3515
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
	je	.L431
.L413:
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
	je	.L414
	call	_ZdlPv
.L414:
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
	je	.L408
	call	_ZdlPv
.L408:
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
.L431:
	.cfi_restore_state
	movq	144(%rdi), %rax
	movq	152(%rdi), %rdx
	movl	$1, %edi
	cmpq	%rdx, %rax
	je	.L410
	.p2align 4,,10
	.p2align 3
.L411:
	imulq	(%rax), %rdi
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L411
.L410:
	imulq	136(%rbx), %rdi
	addq	$7, %rdi
	js	.L412
	andq	$-8, %rdi
.LEHB29:
	call	_Znam
	movq	200(%rbx), %rdi
	movq	%rax, 200(%rbx)
	testq	%rdi, %rdi
	je	.L413
	call	_ZdaPv
	jmp	.L413
.L412:
	call	__cxa_throw_bad_array_new_length
.L422:
.L430:
	movq	%rax, %r12
	jmp	.L418
.L421:
	jmp	.L430
.L418:
	movq	(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L419
	call	_ZdlPv
.L419:
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
	.uleb128 .L421-.LFB3529
	.uleb128 0
	.uleb128 .LEHB28-.LFB3529
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L422-.LFB3529
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
