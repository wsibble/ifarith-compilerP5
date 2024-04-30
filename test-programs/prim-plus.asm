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
	sub rsp, 128
	mov esi, 5
	mov [rbp-24], esi
	mov esi, [rbp-24]
	mov [rbp-16], esi
	mov esi, 2
	mov [rbp-64], esi
	mov esi, [rbp-8]
	mov [rbp-56], esi
	mov edi, [rbp-64]
	mov eax, [rbp-56]
	imul eax, edi
	mov [rbp-56], eax
	mov esi, [rbp-56]
	mov [rbp-32], esi
	mov esi, [rbp-16]
	mov [rbp-48], esi
	mov edi, [rbp-32]
	mov eax, [rbp-48]
	add eax, edi
	mov [rbp-48], eax
	mov esi, [rbp-48]
	mov [rbp-40], esi
	mov esi, [rbp-40]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 128
	leave 
	ret 

