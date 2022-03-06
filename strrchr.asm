global strrchr

section .text

strrchr:
    mov rax, 0

loop:
    cmp BYTE [rdi], sil
    je cp
    cmp BYTE [rdi], 0
    jz exit
    inc rdi
    jmp loop

cp:
    mov rax, rdi
    inc rdi
    jmp loop

exit:
    cmp sil, 0
    je speexit
    ret

speexit:
    mov rax, rdi
    ret