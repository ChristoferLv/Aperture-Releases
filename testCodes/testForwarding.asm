v2.0 raw
addi $t0, $zero, 0x5
addi $t1, $zero, 0x7
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $t2, $t0, $t1
add $t3, $t0, $t2
add $t4, $t3, $t0
sw $t4 0x0($t0)
add $zero, $zero, $zero
add $t5, $t0, t1
add $t6, $t4, $t1
add $t7, $t5, $t1
add $t8, $t6, $t7
add $t9, $t7, $t8
sw $t9 0x4($t0)
lw $s0 0x0($t0)
add $zero, $zero, $zero
add $s1, $s0, $t1
sw $s1 0x8($t0)
add $zero, $zero, $zero
add $zero, $zero, $zero
lw $s2 0x8($t0)
lw $s3 0x4($t0)
add $zero, $zero, $zero
add $s4, $s2, $s3
sw $s4 0xB($t0)

#Resultado esperado:
#32 ciclos
#0x5 em $t0
#0x7 em $t1
#0xc em $t2
#0x11 em $t3
#0x16 em $t4
#0xc em $t5
#0x1d em $t6
#0x13 em $t7
#0x30 em $t8
#0x43 em $t9
#0x16 em $s0
#0x1d em $s1
#0x1d em $s2
#0x43 em $s3
#0x60 em $s4
#0x16 na posição 1 da memória
#0x43 na posição 2 da memória
#0x1d na posição 3 da memória
#0x60 na posição 4 da memória
