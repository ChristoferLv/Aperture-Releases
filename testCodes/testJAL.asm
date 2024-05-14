v2.0 raw
addi $t0 $zero 0x0005
addi $t1 $zero 0x0006
jal 0x0000007
addi $s3 $zero 0x0CCC
add $zero $zero $zero
add $zero $zero $zero
j 0x0000004
add $s0 $t0 $t1
sub $s1 $t1 $t0
jr $ra
addi $s2 $zero 0x0FFF