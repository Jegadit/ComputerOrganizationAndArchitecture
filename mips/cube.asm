    .text
    .globl main

main:

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0


    mult $t0, $t0
    mflo $t1
    mult $t1, $t0
    mflo $t2
    
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall

    .data
msg1:   .asciiz "Enter a number: "
msg2:   .asciiz "Cube of number is: "
