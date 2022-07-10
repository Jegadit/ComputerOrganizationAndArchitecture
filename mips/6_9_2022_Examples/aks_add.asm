# Example program to compute the sum of squares.
# -----------------------------------------------------
# Data Declarations
.data
n: .word 2
sum: .word 0
string: .asciiz      "Hello SPIM!\n"
# -----------------------------------------------------
# text/code section
.text
.globl main
.ent main
main:
# -----
# Compute sum of squares from 1 to n.
lw $t0, n #
add $t0, $t0, $t0
sw $t1, sum
# -----
# Done, terminate program.
li $v0, 10 # call code for terminate
syscall # system call
.end main