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


; mul: for unsgined multiplications
; imul: for signed multiplications

multiply:
    push ebp    
    mov ebp, esp

    mov al, 0xff ; overflow register example
    mov bl, 2
    mul bl ;  multiply the val stored here by the val in al and store in al


    pop ebp
    ret


divide:
    push ebp    
    mov ebp, esp

    mov eax, 11
    mov ecx, 2
    div ecx ; eax = eax / ecx : remainder is stored in EDX

    
    pop ebp
    ret


_start:
    call divide
    mov eax, 1
    int 80h
