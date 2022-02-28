global strstr

section .text

strstr:
    mov rbx, 0
    mov rcx, 0

    mov rax, 0

    mov r8, 0

    cmp sil, 0
    jz retall

    jmp loop

retnull:
    mov rax, 0
    ret

retfind:
    add rdi, r8
    mov rax, rdi
    add rax, 1
    ret

retall:
    mov rax, rdi
    ret

loop:
    mov al, BYTE [rdi + rbx]
    mov dl, BYTE [rsi + rcx]

    ; if at end str1
    cmp al, 0
    jz retnull

    ; if at end of str2
    cmp dl, 0
    jz retfind

    cmp dl, al
    je increment
    jne setzero

    setzero:
        mov rcx, 0
        mov r8, rbx
        jmp continue

    increment:
        inc rcx

continue:
    inc rbx
    jmp loop
