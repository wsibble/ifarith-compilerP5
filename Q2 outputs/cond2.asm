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
	sub rsp, 592
	mov esi, 2
	mov [rbp-96], esi
	mov esi, 3
	mov [rbp-80], esi
	mov esi, 3
	mov [rbp-48], esi
	mov esi, [rbp-80]
	mov [rbp-32], esi
	mov edi, [rbp-48]
	mov eax, [rbp-32]
	imul eax, edi
	mov [rbp-32], eax
	mov esi, [rbp-96]
	mov [rbp-16], esi
	mov edi, [rbp-32]
	mov eax, [rbp-16]
	sub eax, edi
	mov [rbp-16], eax
	mov esi, 0
	mov [rbp-128], esi
	mov edi, [rbp-128]
	mov eax, [rbp-16]
	cmp eax, edi
	mov [rbp-16], eax
	jz lab1285
	jmp lab1287
lab1285:	mov esi, 1
	mov [rbp-288], esi
	mov esi, [rbp-288]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1287:	mov esi, 9
	mov [rbp-264], esi
	mov esi, 8
	mov [rbp-248], esi
	mov esi, [rbp-264]
	mov [rbp-216], esi
	mov edi, [rbp-248]
	mov eax, [rbp-216]
	add eax, edi
	mov [rbp-216], eax
	mov esi, 0
	mov [rbp-144], esi
	mov edi, [rbp-144]
	mov eax, [rbp-216]
	cmp eax, edi
	mov [rbp-216], eax
	jz lab1291
	jmp lab1293
lab1291:	mov esi, 8
	mov [rbp-200], esi
	mov esi, [rbp-200]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1293:	mov esi, 9
	mov [rbp-296], esi
	mov esi, 8
	mov [rbp-184], esi
	mov esi, [rbp-296]
	mov [rbp-168], esi
	mov edi, [rbp-184]
	mov eax, [rbp-168]
	add eax, edi
	mov [rbp-168], eax
	mov esi, 100
	mov [rbp-152], esi
	mov esi, [rbp-168]
	mov [rbp-136], esi
	mov edi, [rbp-152]
	mov eax, [rbp-136]
	add eax, edi
	mov [rbp-136], eax
	mov esi, 2
	mov [rbp-120], esi
	mov esi, [rbp-136]
	mov [rbp-88], esi
	mov edi, [rbp-120]
	mov eax, [rbp-88]
	sub eax, edi
	mov [rbp-88], eax
	mov esi, 0
	mov [rbp-160], esi
	mov edi, [rbp-160]
	mov eax, [rbp-88]
	cmp eax, edi
	mov [rbp-88], eax
	jz lab1301
	jmp lab1303
lab1301:	mov esi, 8
	mov [rbp-72], esi
	mov esi, [rbp-72]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1303:	mov esi, 9
	mov [rbp-40], esi
	mov esi, 6
	mov [rbp-24], esi
	mov esi, -23
	mov [rbp-8], esi
	mov esi, [rbp-24]
	mov [rbp-280], esi
	mov edi, [rbp-8]
	mov eax, [rbp-280]
	sub eax, edi
	mov [rbp-280], eax
	mov esi, [rbp-40]
	mov [rbp-256], esi
	mov edi, [rbp-280]
	mov eax, [rbp-256]
	imul eax, edi
	mov [rbp-256], eax
	mov esi, 0
	mov [rbp-176], esi
	mov edi, [rbp-176]
	mov eax, [rbp-256]
	cmp eax, edi
	mov [rbp-256], eax
	jz lab1309
	jmp lab1311
lab1309:	mov esi, 9
	mov [rbp-240], esi
	mov esi, [rbp-240]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1311:	mov esi, 7
	mov [rbp-208], esi
	mov esi, [rbp-208]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 592
	leave 
	ret 

