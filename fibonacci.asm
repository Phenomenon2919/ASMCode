BITS 32

extern printf
extern scanf

section .data
	msg0: db "Enter number n: ",0
	msg1: db "The fibonacci numbers in sequence are: ",10 ,0
	fmt_p:  db "%d",10, 0
	fmt_s: db "%d", 0

section .bss
	n: resw 10

section .text
	global main

	main:
		push ebp
		mov ebp, esp
		sub esp, 12

		push msg0
		call printf
		add esp, 4

		lea eax, [ebp-4]
		push eax
		push fmt_s
		call scanf
		add esp, 8

		push msg1
		call printf
		add esp, 4

		mov eax, 0
		push eax
		push fmt_p
		call printf
		add esp, 4 

		mov ebx, 1
		push ebx
		push fmt_p
		call printf
		add esp, 4

		mov eax, 0
		mov ebx, 1
	l1: mov [ebp-8], ebx
		add ebx, eax
		mov [ebp-12], ebx

		push ebx
		push fmt_p
		call printf
		add esp, 4

		mov eax, [ebp - 8]
		mov ebx, [ebp - 12]
		mov ecx, [ebp - 4]
		dec ecx
		mov [ebp - 4], ecx
		cmp ecx, 0
		jg l1

		mov esp, ebp
		pop ebp
		ret

