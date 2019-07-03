BITS 32

extern printf
extern atoi

section .data
	msg1 : db "The greater number is: ",10, 0
	fmt : db "%d", 10, 0

section .text
	global main

	main:
		;mov edx, dword [esp+8]
		;mov ecx, dword [esp+12]
		

		push ebp
		mov ebp, esp
		sub esp, 12
		mov esi, dword[ebp+12]
		add esi, 4

		push dword[esi]
		call atoi

		mov [ebp-4],eax

		add esi, 4
		push dword[esi]
		call atoi

		mov [ebp-8], eax
		
		push msg1
		call printf
		add esp, 4

		mov ebx, [ebp-8]

		cmp [ebp-4], ebx
		jl l2

		mov ebx, [ebp-4]

	l2: push ebx
		push fmt
		call printf
		add esp,8

		mov esp, ebp
		pop ebp
		ret