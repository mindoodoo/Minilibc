global strchr

section .text

strchr:
    mov rcx, 0

loop:
    cmp BYTE [rdi + rcx], 0
    jz retnull
    cmp BYTE [rdi + rcx], sil
    jz exit
    inc rcx
    jmp loop

retnull:
    mov rax, 0
    ret

exit:
    mov rax, rdi
    add rax, rcx
    ret