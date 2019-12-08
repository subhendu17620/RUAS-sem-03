.section .data
string:
	.asciz "madam"


.section .bss
    .lcomm rev, 10

.section .text

.globl _start

# function for system exit code
_ret:
    movq    $60, %rax               # sys_exit
    movq    $0, %rdi                # exit code
    syscall

# driver function
_start:
    cld

    movl $string+4,%esi
    movl $rev,%edi
    movl $0,%edx

    loop:
        movsb
        subl $2,%esi
        addl $1,%edx
        cmp $5,%edx
        jne loop

    movl $string,%esi
    movl $rev,%edi
    movl $5,%ecx
    rep cmpsb

    cmp $0,%ecx
    jne end

    movl $111,%eax
# if it is a palindrome, 111 =eax else eax=0
    end:
    syscall
    call _ret           # exit