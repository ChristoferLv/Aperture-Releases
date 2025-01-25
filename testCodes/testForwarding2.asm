v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
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
add $zero, $zero, $zero
add $s2, $s1, $zero

#Resultado esperado:
#0x5 em $t0
#0x7 em $t1
#0x28 em $s0
#0x7 em $s1
#0x7 em $s2
#0x7 na posição 0 da memória