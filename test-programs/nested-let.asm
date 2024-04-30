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
	mov esi, 1
	mov [rbp-56], esi
	mov esi, [rbp-56]
	mov [rbp-16], esi
	mov esi, 30
	mov [rbp-48], esi
	mov esi, [rbp-16]
	mov [rbp-40], esi
	mov edi, [rbp-48]
	mov eax, [rbp-40]
	add eax, edi
	mov [rbp-40], eax
	mov esi, [rbp-40]
	mov [rbp-24], esi
	mov esi, [rbp-16]
	mov [rbp-32], esi
	mov edi, [rbp-24]
	mov eax, [rbp-32]
	imul eax, edi
	mov [rbp-32], eax
	mov esi, [rbp-32]
	mov [rbp-8], esi
	mov esi, [rbp-8]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 112
	leave 
	ret 

