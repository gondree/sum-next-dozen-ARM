        .text
        .align  2
        .global sumSix
        .syntax unified
        .arm
        .type   sumSix, %function
sumSix:
        str     fp, [sp, #-4]!   @ push fp
        add     fp, sp, #0       @ set fp
        sub     sp, sp, #28      @ room for locals

        str     r0, [fp, #-16]   @ save the arguments
        str     r1, [fp, #-20]   @    passed in
        str     r2, [fp, #-24]   @    registers
        str     r3, [fp, #-28]   @    in local area
        ldr     r2, [fp, #-16]   @ load arg1
        ldr     r3, [fp, #-20]   @ and arg2
        add     r2, r2, r3       @ r2 is subtotal
        ldr     r3, [fp, #-24]   @ load arg3
        add     r2, r2, r3       @ add to subtotal
        ldr     r3, [fp, #-28]   @ load arg4
        add     r2, r2, r3
        ldr     r3, [fp, #4]     @ load arg5
        add     r2, r2, r3
        ldr     r3, [fp, #8]     @ load arg5
        add     r2, r2, r3

        mov     r0, r2           @ return sum
        add     sp, fp, #0       @ clean stack
        ldr     fp, [sp], #4     @ pop fp
        bx      lr
