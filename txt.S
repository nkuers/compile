    .section .data
fmt_in:     .string "%d"
fmt_out:    .string "Result: %d\n"

    .section .text
    .globl main
    .align 2

main:
    # 准备栈帧
    addi sp, sp, -16
    sd ra, 8(sp)
    sd s0, 0(sp)
    addi s0, sp, 16

    # 调用 scanf 读取一个整数
    lui a0, %hi(fmt_in)        # 加载输入格式化字符串地址
    addi a0, a0, %lo(fmt_in)   # 加载输入格式化字符串低 12 位
    addi a1, s0, -4            # 把地址传给 a1，保存输入的整数
    call scanf                 # 调用 scanf

    # 调用 printf 输出读取的整数
    lw a1, -4(s0)              # 把刚才输入的整数值加载到 a1
    lui a0, %hi(fmt_out)       # 加载输出格式化字符串地址
    addi a0, a0, %lo(fmt_out)  # 加载输出格式化字符串低 12 位
    call printf                # 调用 printf 输出

    # 恢复栈帧并返回
    ld ra, 8(sp)
    ld s0, 0(sp)
    addi sp, sp, 16
    ret

