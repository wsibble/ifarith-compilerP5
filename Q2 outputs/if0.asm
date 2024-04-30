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
	sub rsp, 96
	mov esi, 0
	mov [rbp-8], esi
	mov esi, 0
	mov [rbp-16], esi
	mov edi, [rbp-16]
	mov eax, [rbp-8]
	cmp eax, edi
	mov [rbp-8], eax
	jz lab1261
	jmp lab1263
lab1261:	mov esi, 1
	mov [rbp-48], esi
	mov esi, [rbp-48]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1263:	mov esi, 0
	mov [rbp-40], esi
	mov esi, [rbp-40]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 96
	leave 
	ret 

