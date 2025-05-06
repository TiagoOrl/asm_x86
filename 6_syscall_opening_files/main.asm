section .data
    pathname DD "/home/tiago/Desktop/text1"


section .text
global _start

_start:   
    mov eax, 5 ; systemcall for file open
    mov ebx, pathname ; 1st argument is the pathname 
    mov ecx, 0 ; 2nd argument is the flags, 0 = ready only
    int 80h