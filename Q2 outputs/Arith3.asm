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
	sub rsp, 288
	mov esi, 8
	mov [rbp-8], esi
	mov esi, 2
	mov [rbp-64], esi
	mov esi, [rbp-8]
	mov [rbp-56], esi
	mov edi, [rbp-64]
	mov eax, [rbp-56]
	add eax, edi
	mov [rbp-56], eax
	mov esi, [rbp-56]
	mov [rbp-16], esi
	mov esi, 7
	mov [rbp-48], esi
	mov esi, [rbp-16]
	mov [rbp-40], esi
	mov edi, [rbp-48]
	mov eax, [rbp-40]
	sub eax, edi
	mov [rbp-40], eax
	mov esi, [rbp-40]
	mov [rbp-16], esi
	mov esi, 2
	mov [rbp-144], esi
	mov esi, [rbp-16]
	mov [rbp-136], esi
	mov edi, [rbp-144]
	mov eax, [rbp-136]
	imul eax, edi
	mov [rbp-136], eax
	mov esi, [rbp-136]
	mov [rbp-80], esi
	mov esi, 2
	mov [rbp-128], esi
	mov esi, 5
	mov [rbp-120], esi
	mov esi, [rbp-128]
	mov [rbp-24], esi
	mov edi, [rbp-120]
	mov eax, [rbp-24]
	imul eax, edi
	mov [rbp-24], eax
	mov esi, [rbp-24]
	mov [rbp-32], esi
	mov esi, [rbp-80]
	mov [rbp-112], esi
	mov edi, [rbp-16]
	mov eax, [rbp-112]
	imul eax, edi
	mov [rbp-112], eax
	mov esi, 100
	mov [rbp-104], esi
	mov esi, [rbp-32]
	mov [rbp-96], esi
	mov edi, [rbp-104]
	mov eax, [rbp-96]
	imul eax, edi
	mov [rbp-96], eax
	mov esi, [rbp-112]
	mov [rbp-88], esi
	mov edi, [rbp-96]
	mov eax, [rbp-88]
	add eax, edi
	mov [rbp-88], eax
	mov esi, [rbp-88]
	mov [rbp-72], esi
	mov esi, [rbp-72]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 288
	leave 
	ret 

