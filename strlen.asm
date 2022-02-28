global strlen

section .text

strlen:
  mov rax, 0

loop:
  cmp BYTE [rdi + rax], 0
  jz exit
  inc rax
  jmp loop

exit:
  ret