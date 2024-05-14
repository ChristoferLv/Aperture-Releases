v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
bne $t0, $t1, 0x5
addi $s1, $zero, 0xFFFF
j 0x9
add $zero $zero, $zero
add $zero $zero, $zero
add $zero $zero, $zero
addi $s1, $zero, 0x0AAA
addi $t0, $zero, 0x5
addi $t1, $zero, 0x5
beq $t0, $t1, 0x5
addi $s2, $zero, 0xFFFF
j 0x17
add $zero $zero, $zero
add $zero $zero, $zero
add $zero $zero, $zero
addi $s2, $zero, 0x0AAA


#Resultado esperado:
#0x0AAA em $s1
#0x0AAA em $s2
#0x0CCC em $s3