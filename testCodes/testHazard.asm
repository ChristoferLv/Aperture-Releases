v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
addi $t2, $zero, 0x9
sw $t0, 0x0($zero)
sw $t1, 0x4($zero)
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
lw $s0, 0x0($zero)
add $s1, $s0, $t2
lw $s2, 0x0($zero)
lw $s3, 0x4($zero)
add $s4, $s2, $s3

#Esse código considera uma arquitetura que tenha a unidade de forwarding
#Resultado esperado
#0x5 em $t0
#0x7 em $t1
#0x9 em $t2
#0x5 em $s0
#0xe em $s1
#0x5 em $s2
#0x7 em $s3
#0xc em $s4
