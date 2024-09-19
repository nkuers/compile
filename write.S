.text
.section .rodata
.align 3
.LC0:
    .string "%d"
    .align 3
.LC1:
    .string "%d\n"
	
	
.global main
main:
    addi sp, sp, -32
	sd ra, 24(sp)
	sd s0, 16(sp)
	addi s0, sp, 32
	addi a5, s0, -28
	mv a1, a5
	la a0, .LC0
	call __isoc99_scanf
	
	li a5, 2
	sw a5, -20(s0)
	li a5, 1
	sw a5, -24(s0)
	
	j .L2
	
.L3:
    lw a5, -24(s0)
	mv a4, a5
	lw a5, -20(s0)
	mulw a5, a4, a5
	sw a5, -24(s0)
	lw a5, -20(s0)
	addi a5, a5, 1
	sw a5, -20(s0)
	
	
.L2:
	lw a4, -28(s0)
	lw a5, -20(s0)
	ble a5, a4, .L3
	lw a5, -24(s0)
	mv a1, a5
	la a0, .LC1
	call printf
	li a5, 0
	mv a0, a5
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
	

   
	
	