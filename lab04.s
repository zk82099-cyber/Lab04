.section .text
.globl sum

sum:
    movb $0, %al
    movb $0, %bl
    loop1:
        add (%rdi), %bl
        incb %al;
        cmp (%rsi), %al
        jle loop1

    mov %bl, (%rax)    
    ret

.section .note.GNU-stack,"",@progbits