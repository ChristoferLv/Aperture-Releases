v2.0 raw
addi $s0, $zero, 0x2 
addi $s1, $zero, 0x4
addi $s2, $zero, 0xC
add $zero, $zero, $zero
add $zero, $zero, $zero
add $s3, $s2, $s1
sub $s4, $s2, $s1
sub $s5, $s1, $s2
and $s6, $s2, $s1
or $s7, $s2, $s1
xor $t0, $s2, $s1
nor $t1, $s2, $s1
sll $t2, $s2, 0x2
srl $t3, $s2, 0x2
slt $t4, $s2, $s1
slt $t5, $s0, $s1
andi $t6, $s2, 0xD
ori $t7, $s0, 0x9

#Resultado esperado:
0x8 em $t0
0xf3 em $t1
0x30 em $t2
0x3 em $t3
0x0 em $t4
0x1 em $t5
0xc em $t6
0xb em $t7
0x2 em $s0
0x4 em $s1
0xc em $s2
0x10 em $s3
0x8 em $s4
0xf8 em $s5
0x4 em $s6
0xc em $s7