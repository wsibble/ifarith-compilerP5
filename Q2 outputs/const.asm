section .data
	int_format db "%ld",10,0


	global _main
	extern _printf
section .text


_start:	call _main
	mov rax, 60
	xor rdi, rdi
	syscall


_main:	push rbp
	mov rbp, rsp
	sub rsp, 64
	mov esi, 5
	mov [rbp-8], esi
	mov esi, [rbp-8]
	mov [rbp-16], esi
	mov esi, 4
	mov [rbp-32], esi
	mov esi, [rbp-32]
	mov [rbp-24], esi
	mov rax, [rbp-24]
	jmp finish_up
finish_up:	add rsp, 64
	leave 
	ret 

