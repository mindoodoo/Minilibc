global strcmp

section .text

; rdi, rsi, rdx

strcmp:
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
    jmp loop

exit:
    sub al, bl
    ret