    .text
    .globl main

main:
    li  $v0,4
    la  $a0,prompt
    syscall

    li  $t0,0   # array index
    li  $s0,0   # loop counter

loops:
    li  $v0,5   # read a number
    syscall

    sw  $v0,myArray($t0)    # store the number
    addi    $t0,$t0,4       # increment the index
    addi    $s0,$s0,1       # increment the loop counter
    blt    $s0,5,loops       # loop 5 times

    li  $t0,0               # array index   
    lw  $s0,myArray($t0)    # maximum value
    li  $t1,1               # loop counter

again:
    beq    $t1,5,end        # loop 5 times
    add    $t0,$t0,4        # increment the index 
    lw     $s1,myArray($t0) # load the value
    bge    $s1,$s0,nochg    # compare the value with maximum
    move   $s0,$s1          # if greater, update maximum
nochg:
    add    $t1,$t1,1      # increment the loop counter
    j      again
endloop:
    li      $v0,4
    la      $a0,msgMax
    syscall

    li      $v0,1
    move    $a0,$s0
    syscall
    sw      $s0,max

    .data
myArray:    .space  20      # space for 20 int = 5*4bits
prompt:     .ascii  "Enter a array element: "
msgMax:     .ascii  "\nMaximum = "