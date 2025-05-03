section .data
    num DD 5

section .text
global _start


_start:
    MOV eax, 1
    MOV ebx, [num] ; load value from stack
    INT 80h
