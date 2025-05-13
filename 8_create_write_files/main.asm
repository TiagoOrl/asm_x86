section .data
    path DB "/home/tiago/Desktop/new_file.txt", 0
    toWrite DB "Hello World!", 0AH, 0DH, "$" ; size = 15


section .bss
    buffer: resb 48


section .text
global _start

_start:   
    ; file open
    MOV eax, 5  ; systemcall for file open
    MOV ebx, path   ; 1st argument is the pathname 

    ; 2nd argument for create and read flag (octal)
    MOV ecx, 101o

    ; 3rd argument, permission for read write execute flag
    mov edx, 700o
    INT 80h


    ; file write
    mov ebx, eax    ; write data into file (file descriptor from file open is in EAX)
    mov eax, 4      ; syscall for file write
    mov ecx, toWrite        ; move into ECX the pointer to the data
    mov edx, 15     ; in EDX is the size of the data
    int 80h


    ; finish execution
    mov eax, 1
    mov ebx, 0
    int 80h