
section .text
global _start

addNumbers:
    push ebp ; add ebp return addres
    mov ebp, esp
    mov eax, [ebp + 8] ; "var" a
    mov ebx, [ebp + 12] ; "var" b
    add eax, ebx

    mov ebx, [ebp + 16] ; var c
    add eax, ebx

    mov ebx, [ebp + 20] ; var d
    add eax, ebx

    pop ebp
    ret



_start:
    push 4 ; var a
    push 1 ; var b
    push 180 ; var c
    push 30 ; var d
    call addNumbers ; places the return address on the stack
    mov ebx, eax ; return address here
    mov eax, 1
    int 80h