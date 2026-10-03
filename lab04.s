.section .text
.globl sum

sum:
    mov $0, %rax
    mov $0, %rcx

    loop1:
        addq (%rdi), %rax
        addq $4, %rdi
        inc %rcx;
        cmp %rsi, %rcx
        jl loop1

      
    ret

.section .note.GNU-stack,"",@progbits