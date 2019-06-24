BITS 32

extern printf

section .data
	msg1: db "Even Numbers b/w 0 to 100 are: ",10 ,0
	fmt : db "%d",10,0

section .text
	global main

	main:
		push ebp
		mov ebp, esp

		push msg1
		call printf
		add esp,4

		mov ebx, 2
	l1:	push ebx
		push fmt
		call printf
		add esp, 8
		add ebx, 2
		cmp ebx, 100
		jle l1

		mov esp, ebp
		pop ebp
		ret

