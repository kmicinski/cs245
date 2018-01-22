	.section	__TEXT,__text,regular,pure_instructions
	.globl	_hello
_hello:                                 ## @hello
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
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

	.globl	_callHelloDave
_callHelloDave:                         ## @callHelloDave
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
	
# Function `length`	
# Inputs:
# %rdi -- [arg] char* 
# Outputs:
# %eax -- Length of [arg]
	.globl	_length
_length:                                ## @length
	pushq	%rbp
	movq	%rsp, %rbp
	mov   $0, %eax
Lloop_header:
  cmpl  $0x0, ($rdi)
	je    Lloop_done
  addl  $1, %eax
  inc   %rdi
  jmp   Lloop_header
Lloop_done:
  # Result will be left in %eax
	popq	%rbp
	retq
	
	.globl	_example
	.p2align	4, 0x90
_example:                               ## @example
	.cfi_startproc
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
_main:                                  ## @main
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
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
