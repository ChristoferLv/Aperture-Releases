v2.0 raw
add $zero $zero, $zero
j 0xA
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
j 0xC
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
j 0x5
addi $s1, $zero, 0x0FFF
addi $s0, $zero, 0x0CCC
j 0xD
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF
addi $s1, $zero, 0x0FFF

#Resultado esperado:
#0x0CCC em $s0
#travar na instrução 0x00d