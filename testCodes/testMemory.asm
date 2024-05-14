v2.0 raw
addi $t0, $zero, 0x0D03
addi $t1, $zero, 0x04
add $zero, $zero, $zero
sw $t0, 0x0($t1)
lw $s0, 0x0($t1)
add $zero, $zero, $zero
addi $t0, $zero, 0xAA
sw $t0, 0x4($t1)
lw $s1, 0x4($t1)

#Resultados espearados:
#0xd03 no endereço 1 da memória
#0xaa no endereço 2 da memória
#0xd03 no registrador $s0
#0xaa no registrador $s1