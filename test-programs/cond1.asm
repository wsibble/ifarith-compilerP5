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
	sub rsp, 416
	mov esi, 5
	mov [rbp-128], esi
	mov esi, 2
	mov [rbp-208], esi
	mov esi, 3
	mov [rbp-200], esi
	mov esi, [rbp-208]
	mov [rbp-192], esi
	mov edi, [rbp-200]
	mov eax, [rbp-192]
	imul eax, edi
	mov [rbp-192], eax
	mov esi, [rbp-128]
	mov [rbp-184], esi
	mov edi, [rbp-192]
	mov eax, [rbp-184]
	sub eax, edi
	mov [rbp-184], eax
	mov esi, 0
	mov [rbp-24], esi
	mov edi, [rbp-24]
	mov eax, [rbp-184]
	cmp eax, edi
	mov [rbp-184], eax
	jz lab1279
	jmp lab1281
lab1279:	mov esi, 1
	mov [rbp-112], esi
	mov esi, [rbp-112]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1281:	mov esi, 2
	mov [rbp-176], esi
	mov esi, 3
	mov [rbp-96], esi
	mov esi, [rbp-176]
	mov [rbp-168], esi
	mov edi, [rbp-96]
	mov eax, [rbp-168]
	add eax, edi
	mov [rbp-168], eax
	mov esi, 0
	mov [rbp-40], esi
	mov edi, [rbp-40]
	mov eax, [rbp-168]
	cmp eax, edi
	mov [rbp-168], eax
	jz lab1285
	jmp lab1287
lab1285:	mov esi, 2
	mov [rbp-72], esi
	mov esi, [rbp-72]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1287:	mov esi, 5
	mov [rbp-48], esi
	mov esi, 2
	mov [rbp-32], esi
	mov esi, -2
	mov [rbp-160], esi
	mov esi, [rbp-32]
	mov [rbp-16], esi
	mov edi, [rbp-160]
	mov eax, [rbp-16]
	add eax, edi
	mov [rbp-16], eax
	mov esi, [rbp-48]
	mov [rbp-152], esi
	mov edi, [rbp-16]
	mov eax, [rbp-152]
	imul eax, edi
	mov [rbp-152], eax
	mov esi, 0
	mov [rbp-56], esi
	mov edi, [rbp-56]
	mov eax, [rbp-152]
	cmp eax, edi
	mov [rbp-152], eax
	jz lab1293
	jmp lab1295
lab1293:	mov esi, 3
	mov [rbp-144], esi
	mov esi, [rbp-144]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1295:	mov esi, 4
	mov [rbp-120], esi
	mov esi, [rbp-120]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 416
	leave 
	ret 

