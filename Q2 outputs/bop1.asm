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
	sub rsp, 192
	mov esi, 89
	mov [rbp-8], esi
	mov esi, 3
	mov [rbp-48], esi
	mov esi, [rbp-8]
	mov [rbp-40], esi
	mov edi, [rbp-48]
	mov eax, [rbp-40]
	imul eax, edi
	mov [rbp-40], eax
	mov esi, [rbp-40]
	mov [rbp-16], esi
	mov esi, 4
	mov [rbp-32], esi
	mov esi, [rbp-32]
	mov [rbp-24], esi
	mov edi, [rbp-16]
	mov eax, [rbp-24]
	imul eax, edi
	mov [rbp-24], eax
	mov esi, 9
	mov [rbp-96], esi
	mov esi, [rbp-16]
	mov [rbp-88], esi
	mov edi, [rbp-96]
	mov eax, [rbp-88]
	add eax, edi
	mov [rbp-88], eax
	mov esi, [rbp-24]
	mov [rbp-80], esi
	mov edi, [rbp-88]
	mov eax, [rbp-80]
	add eax, edi
	mov [rbp-80], eax
	mov esi, [rbp-80]
	mov [rbp-56], esi
	mov esi, [rbp-16]
	mov [rbp-72], esi
	mov edi, [rbp-56]
	mov eax, [rbp-72]
	sub eax, edi
	mov [rbp-72], eax
	mov esi, [rbp-16]
	mov [rbp-64], esi
	mov edi, [rbp-72]
	mov eax, [rbp-64]
	imul eax, edi
	mov [rbp-64], eax
	mov esi, [rbp-64]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 192
	leave 
	ret 

