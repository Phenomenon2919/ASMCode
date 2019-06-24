BITS 32

section .data
	msg1 db 'Enter your name: '
	len1 equ $ -msg1
	msg2 db 'Good Morning '
	len2 equ $ -msg2

section .bss
	name RESW 10
	

section .text
	global main:

	main:
		mov eax, 4
		mov ebx, 1
		mov ecx, msg1
		mov edx, len1
		int 80h
		mov eax, 3
		mov ebx, 0
		mov ecx, name
		mov edx, 10
		int 80h
		mov eax, 4
		mov ebx, 1
		mov ecx, msg2
		mov edx, len2
		int 80h
		mov eax, 4
		mov ebx, 1
		mov ecx, name
		mov edx, 10
		int 80h
		mov eax, 1
		int 80h


