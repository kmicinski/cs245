	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_hello
	.p2align	4, 0x90
_hello:                                 ## @hello
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_callHelloDave
	.p2align	4, 0x90
_callHelloDave:                         ## @callHelloDave
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_example
	.p2align	4, 0x90
_example:                               ## @example
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	LBB2_2
## BB#1:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
LBB2_2:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_length
_length:                                ## @length
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB3_3
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	LBB3_1
LBB3_3:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_callHelloDave
	leaq	L_.str.2(%rip), %rdi
	callq	_length
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	callq	_length
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	callq	_length
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello, %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"hi!"

L_.str.3:                               ## @.str.3
	.asciz	"hello"

L_.str.4:                               ## @.str.4
	.space	1


.subsections_via_symbols
