.text
.globl main

main:
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640

    # usage1
    sub $t0, $s1, $s0

    # usage2
    sub $t1, $s2, $s1

    # usage3
    sub $t2, $s3, $s2

    # total
    add $t3, $t0, $t1
    add $t3, $t3, $t2

    li $v0, 10
    syscall