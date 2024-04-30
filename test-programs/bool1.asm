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
	sub rsp, 112
	mov esi, false
	mov [rbp-40], esi
	mov esi, [rbp-40]
	mov [rbp-48], esi
	mov esi, [rbp-48]
	mov [rbp-16], esi
	mov esi, true
	mov [rbp-32], esi
	mov esi, [rbp-32]
	mov [rbp-56], esi
	mov esi, [rbp-56]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 112
	leave 
	ret 

