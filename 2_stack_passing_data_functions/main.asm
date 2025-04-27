
section .text
global _start

addTwo:
    push ebp ; add ebp return addres
    mov ebp, esp
    mov eax, [ebp + 8] ; "var" a
    mov ebx, [ebp + 12] ; "var" b
    add eax, ebx
    pop ebp
    ret



_start:
    push 4 ; "var" a
    push 1 ; "var" b
    call addTwo ; places the return address on the stack
    mov ebx, eax ; return address here
    mov eax, 1
    int 80h