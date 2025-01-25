v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
bne  $t0, $t1, 0x1
sw $t1 0x0($zero)
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
add $s0, $s0, $t0
lw $s1 0x0($zero)
beq $s1, $t1, 0x1
addi $s5, $zero, 0xFFFF
add $s2, $s1, $zero
