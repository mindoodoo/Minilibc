global memset

section .text

memset:
    mov rax, 0

loop:
    cmp rax, rdx
    jz exit
    mov [rdi + rax], rsi
    inc rax
    jmp loop

exit:
    mov rax, rdi
    ret