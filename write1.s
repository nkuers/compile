.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%f\n"
	.text
	.align	1
	.globl	main
	
main:
     addi sp, sp, -48
	 sd ra, 40(sp)
	 sd s0, 32(sp)
	 addi s0, sp, 48
	 sw zero, -20(s0)
	 la a5, .LC0
	 flw fa5,0(a5)
	 fsw fa5, -24(s0)
	 li a5, 1
	 sw a5, -28(s0)
	 addi a5, s0, -36
	 mv a1, a5
	 la a0, .LC1
	 call __isoc99_scanf
	 
	 flw fa5, -20(s0)
	 fcvt.d.s fa5, fa5
	 fmv.x.d a1, fa5
	 la a0,.LC2
	 call printf
	 flw fa5, -24(s0)
	 fcvt.d.s fa5, fa5
	 fmv.x.d a1, fa5
	 la a0, .LC2
	 call printf
	 
	 j .L2
	 
.L3:
    flw fa5, -24(s0)
	fsw fa5, -32(s0)
	flw fa4, -20(s0)
	flw fa5, -24(s0)
	fadd.s fa5, fa4, fa5
	fsw fa5, -24(s0)
	flw fa5, -24(s0)
	fcvt.d.s fa5,fa5
	fmv.x.d a1, fa5
	la a0, .LC2
	call printf
	flw fa5, -32(s0)
	fsw fa5, -20(s0)
	lw a5, -28(s0)
	addiw a5, a5, 1
	sw a5, -28(s0)
	
.L2:
    lw a4, -36(s0)
	lw a5, -28(s0)
	blt a5, a4, .L3
	
	li a5, 0
	mv a0, a5
	ld ra, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	jr ra
	
.LC0:
    .word	1065353216
	
	
	 
	 
	 