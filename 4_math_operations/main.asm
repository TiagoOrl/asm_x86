section .data



section .text
global _start


subtract:
    push ebp
    mov ebp, esp

    mov eax, 3
    mov ebx, 5
    sub eax, ebx ; eax - ebx  = 2 : here EFLAGS is set with SF (sign flag)
    mov ebx, 2
    add eax, ebx ; eax = 0 ; zero flag is set

    pop ebp
    ret


_start:
    call subtract
    mov eax, 1
    int 80h
