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
	sub rsp, 160
	mov esi, 1
	mov [rbp-80], esi
	mov esi, 0
	mov [rbp-8], esi
	mov edi, [rbp-8]
	mov eax, [rbp-80]
	cmp eax, edi
	mov [rbp-80], eax
	jz lab1265
	jmp lab1269
lab1265:	mov esi, 1
	mov [rbp-16], esi
	mov esi, 2
	mov [rbp-72], esi
	mov esi, [rbp-16]
	mov [rbp-64], esi
	mov edi, [rbp-72]
	mov eax, [rbp-64]
	add eax, edi
	mov [rbp-64], eax
	mov esi, [rbp-64]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1269:	mov esi, 3
	mov [rbp-56], esi
	mov esi, 4
	mov [rbp-48], esi
	mov esi, [rbp-56]
	mov [rbp-40], esi
	mov edi, [rbp-48]
	mov eax, [rbp-40]
	imul eax, edi
	mov [rbp-40], eax
	mov esi, [rbp-40]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 160
	leave 
	ret 

