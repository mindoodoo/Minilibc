global strpbrk

section .text

strchr:
    mov rcx, 0

loop:
    cmp BYTE [rdi], 0
    jz retnull

    mov rcx, 0
    subloop:
        cmp BYTE [rsi + rcx], 0
        je break
        cmp BYTE [rsi + rcx], dil
        je exit
        inc rcx
        jmp subloop

break:
    inc rdi
    jmp loop

retnull:
    mov rax, 0
    ret

exit:
    mov rax, rdi
    ret