	.file	"tribonacci.c"
	.intel_syntax noprefix
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the Tribonacci number you would like "
.LC1:
	.string	"%d"
.LC2:
	.string	"T(%d) = %d\n"
.LC3:
	.string	"tribonacci Series is ..."
.LC4:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	lea	rdi, .LC0[rip]
	call	puts@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L2
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L2:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	je	.L4
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 2
	jne	.L5
.L4:
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
.L5:
	cmp	DWORD PTR -20[rbp], 1
	jne	.L6
	lea	rdi, .LC3[rip]
	call	puts@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
.L6:
	mov	DWORD PTR -16[rbp], 2
	jmp	.L7
.L9:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
.L8:
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
.L7:
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 7.2.0-4) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
