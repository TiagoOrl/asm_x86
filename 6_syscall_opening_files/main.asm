section .data
    path DB "/home/tiago/Desktop/text1", 0


section .bss
    buffer: resb 48


section .text
global _start

_start:   
    MOV eax, 5 ; systemcall for file open
    MOV ebx, path ; 1st argument is the pathname 
    MOV ecx, 0 ; 2nd argument is the flags, 0 = ready only
    INT 80h

    mov ebx, eax ; we then move the file descriptor into ebx to perform the file read
    mov eax, 3 ; syscall number for file read
    mov ecx, buffer ; points buffer location to ecx
    mov edx, 48 ; pass buffer size
    int 80h ; this interrupt reads into the buffer

    ; finish execution
    mov eax, 1
    mov ebx, 0
    int 80h


