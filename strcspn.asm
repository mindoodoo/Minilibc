global strcspn

section .text

strcspn:
    mov rcx, 0
    mov rax, 0

loop:
    cmp BYTE [rdi], 0
    jz exit

    mov rcx, 0
    subloop:
        cmp BYTE [rsi + rcx], dil
        je exit
        cmp BYTE [rsi + rcx], 0
        je break
        inc rcx
        jmp subloop

break:
    inc rdi
    inc rax
    jmp loop

exit:
    ret