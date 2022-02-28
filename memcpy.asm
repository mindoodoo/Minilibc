global memcpy

section .text

; rdi, rsi, rdx
; rax

memcpy:
    mov rcx, 0

loop:
    cmp rcx, rdx
    je exit
    mov rax, [rsi + rcx]
    mov [rdi + rcx], rax
    inc rcx
    jmp loop

exit:
    mov rax, rdi
    ret
