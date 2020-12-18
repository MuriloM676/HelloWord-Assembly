section .data
msg: db "Hello Word", 0xa
tam: equ $-msg

section .text
global _start

_start:

mov edx, tam ; count
mov ecx, msg ; *buff
mov ebx, 1   ; fd
mov eax, 4
int 0x80

; exit 0
mov ebx, 0; valor do retorno da exit()
mov eax, 1 ; codigo da syscall exit()
int 0x80


; nasm -f elf32 ola.asm
; ld -m elf_i386 -o ola ola.o
