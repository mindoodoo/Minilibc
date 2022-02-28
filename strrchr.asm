global strrchr

section .text

strrchr:
    mov rax, 0
    mov rcx, 0

loop:
    cmp BYTE [rdi + rax], 0
    jz exit
    cmp BYTE [rdi + rax], sil
    jz cp
    inc rcx
    jmp loop

cp:
    mov rax, [rdi + rax]

exit:
    ret