# Listing 6 - energy used between two readings

.data
prompt1: .asciiz "Enter previous reading (kWh): "
prompt2: .asciiz "Enter current reading (kWh): "
label:   .asciiz "Usage (kWh): "
newline: .asciiz "\n"

.text
.globl main

main:
    # Read previous reading into $s0
    li   $v0, 4
    la   $a0, prompt1
    syscall

    li   $v0, 5
    syscall
    add  $s0, $v0, $zero

    # Read current reading into $s1
    li   $v0, 4
    la   $a0, prompt2
    syscall

    li   $v0, 5
    syscall
    add  $s1, $v0, $zero

    # Calculate usage = current - previous
    sub  $t0, $s1, $s0

    # Print label
    li   $v0, 4
    la   $a0, label
    syscall

    # Print usage
    li   $v0, 1
    add  $a0, $t0, $zero
    syscall

    # Print newline
    li   $v0, 4
    la   $a0, newline
    syscall

    # Exit
    li   $v0, 10
    syscall