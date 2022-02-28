global strncmp

section .text

; rdi, rsi, rdx

strncmp:
    mov rcx, 0
    mov rax, 0
    mov rbx, 0

loop:
    mov al, BYTE [rdi + rcx]
    mov bl, BYTE [rsi + rcx]
    cmp al, bl
    jne exit

    cmp BYTE [rdi + rcx], 0
    jz exit
    cmp BYTE [rsi + rcx], 0
    jz exit

    inc rcx
    cmp rdx, rcx
    je retnull

exit:
    sub al, bl
    ret

retnull:
    mov rax, 0
    ret