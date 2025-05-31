	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"7Lab.c"
	.def	Pow;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@00000001000000010000000100000001 # -- Begin function Pow
	.section	.rdata,"dr",discard,__xmm@00000001000000010000000100000001
	.p2align	4
__xmm@00000001000000010000000100000001:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.text
	.globl	Pow
	.p2align	4, 0x90
Pow:                                    # @Pow
# %bb.0:
	testl	%edx, %edx
	jle	.LBB0_1
# %bb.2:
	cmpl	$8, %edx
	jae	.LBB0_4
# %bb.3:
	movl	$1, %eax
	xorl	%r8d, %r8d
	jmp	.LBB0_11
.LBB0_1:
	movl	$1, %eax
	retq
.LBB0_4:
	movl	%edx, %r8d
	andl	$-8, %r8d
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	-8(%r8), %r10d
	movl	%r10d, %eax
	shrl	$3, %eax
	incl	%eax
	movl	%eax, %r9d
	andl	$7, %r9d
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	cmpl	$56, %r10d
	jae	.LBB0_6
# %bb.5:
	movdqa	__xmm@00000001000000010000000100000001(%rip), %xmm1 # xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm3
	jmp	.LBB0_8
.LBB0_6:
	andl	$-8, %eax
	movdqa	__xmm@00000001000000010000000100000001(%rip), %xmm1 # xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm3
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	pshufd	$245, %xmm1, %xmm5              # xmm5 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm1
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm2, %xmm5
	pmuludq	%xmm0, %xmm1
	pmuludq	%xmm2, %xmm4
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm1            # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	addl	$-8, %eax
	jne	.LBB0_7
.LBB0_8:
	testl	%r9d, %r9d
	je	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	pshufd	$245, %xmm1, %xmm4              # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	decl	%r9d
	jne	.LBB0_9
.LBB0_10:
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pmuludq	%xmm1, %xmm3
	pshufd	$238, %xmm3, %xmm0              # xmm0 = xmm3[2,3,2,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$170, %xmm2, %xmm1              # xmm1 = xmm2[2,2,2,2]
	pmuludq	%xmm2, %xmm1
	pmuludq	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpl	%edx, %r8d
	je	.LBB0_13
.LBB0_11:
	subl	%r8d, %edx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	imull	%ecx, %eax
	decl	%edx
	jne	.LBB0_12
.LBB0_13:
	retq
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_02DPKJAMEF@?$CFd?$AA@"(%rip), %rcx
	movl	$27, %edx
	callq	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rdi
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfprintf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_02DPKJAMEF@?$CFd?$AA@"
	.globl	"??_C@_02DPKJAMEF@?$CFd?$AA@"   # @"??_C@_02DPKJAMEF@?$CFd?$AA@"
"??_C@_02DPKJAMEF@?$CFd?$AA@":
	.asciz	"%d"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.addrsig
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
