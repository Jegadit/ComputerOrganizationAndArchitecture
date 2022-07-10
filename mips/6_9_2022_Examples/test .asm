.text
.globl main
main:
li $v0,4
la $a0,string
syscall
        li      $v0,10      # code 10 == exit
        syscall             # Halt the program.
.data
string: .asciiz "welcome"