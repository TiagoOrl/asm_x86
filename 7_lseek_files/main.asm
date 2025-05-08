section .data
    pathname DD "/home/tiago/Desktop/file2"


section .bss
    buffer: resb 12


section .text
global _start


_start:
    ; syscall file open
    mov eax, 5
    mov ebx, pathname
    mov ecx, 0
    int 80h

    ; syscall lseek
    mov ebx, eax
    mov eax, 19
    mov ecx, 24 ; seek offset
    mov edx, 0 ; offset start
    int 80h

    ; syscall file open
    mov eax, 3
    mov ecx, buffer
    mov edx, 12
    int 80h


    ; end
    mov eax, 1
    mov ebx, 0
    int 80h

