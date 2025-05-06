extern test
extern exit

section .data
section .text
global main


main:
    push 1
    push 4
    call test
    push eax ; the return value of test is stored in EAX
    call exit
