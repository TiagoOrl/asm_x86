section .data
    list DB 1,2,3,4

section .text
global _start

_start:
    MOV eax, 0
    MOV cl, 0


loop:
    MOV bl, [list + eax] ; eax val defines the index of the list
    ADD cl, bl
    INC eax ; increments eax
    CMP eax, 4
    JE end
    JMP loop
 
end:
    MOV eax, 1
    MOV ebx, 1
    INT 80h