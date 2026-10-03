.section .text
.globl sum

sum:
    mov (%rsi), %eax
    mov $0, %ecx
    loop1:
        add (%rdi), %rax
        addq $4, %rdi 
        inc %ecx;
        cmpl %ecx, %eax
        jmp loop1

      
    ret

.section .note.GNU-stack,"",@progbits