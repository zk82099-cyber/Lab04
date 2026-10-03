.section .text
.globl sum

sum:
    mov $0, %rax
    mov $0, %ecx
    loop1:
        add (%rdi), %rax
        addq $4, %rdi 
        inc %ecx;
        cmpl %ecx, %esi
        jle loop1

      
    ret

.section .note.GNU-stack,"",@progbits