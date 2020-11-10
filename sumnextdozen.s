        .text
        .align  2
        .global sumNextDozen
        .syntax unified
        .arm
        .type   sumNextDozen, %function
sumNextDozen:
        push    {r4,r5,fp,lr}   @ preserve registers
        add     fp, sp, #0      @ set fp
        sub     sp, sp, #8      @ save room for locals

                                @ arg0 is already set
        add	    r1, r0, #1      @ arg1
        add	    r2, r1, #1      @ arg2
        add	    r3, r2, #1      @ arg3
        add	    r4, r3, #1
        add	    r5, r4, #1
        push    {r4, r5}        @ arg4, arg5 via stack
        str     r5, [fp, #-4]   @ save arg5 for later
        bl	    sumSix

        str	    r0, [fp, #-8]   @ save result for later

        ldr     r0, [fp, #-4]   @ restore prior arg5
        add	    r0, r0, #1      @ arg0 is prior arg5 + 1
        add	    r1, r0, #1      @ arg1
        add	    r2, r1, #1      @ arg2
        add	    r3, r2, #1      @ arg3
        add	    r4, r3, #1
        add	    r5, r4, #1
        push    {r4, r5}        @ arg4, arg5 via stack
        bl		sumSix

        ldr     r1, [fp, #-8]    @ load result of first call
        add     r0, r0, r1       @ set return value
        add     sp, fp, #0       @ clean up stack
        pop     {r4,r5,fp,lr}    @ restore registers
        bx      lr
