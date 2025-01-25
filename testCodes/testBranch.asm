v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
add $zero $zero, $zero
add $zero $zero, $zero
bne $t0, $t1, 0x5
addi $s0, $zero, 0xFFFF
j 0x16
add $zero $zero, $zero
add $zero $zero, $zero
add $zero $zero, $zero
addi $s1, $zero, 0x0AAA
addi $t0, $zero, 0x5
addi $t1, $zero, 0x5
add $zero $zero, $zero
add $zero $zero, $zero
beq $t0, $t1, 0x5
addi $s0, $zero, 0xFFFF
j 0x25
add $zero $zero, $zero
add $zero $zero, $zero
add $zero $zero, $zero
bne $t0, $t1, 0x5
bne $t0, $t1, 0x5
addi $s2, $zero, 0x0AAA
bne $t0, $t1, 0x5
addi $s3, $zero, 0x0AAA
addi $s4, $zero, 0x0CCC

#Resultado esperado:
#0x0AAA em $s1
#0x0AAA em $s2
#0x0AAA em $s3
#0x0CCC em $s4