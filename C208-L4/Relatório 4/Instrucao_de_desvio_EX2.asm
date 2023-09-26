#2)
.text
li $s0,1 #a
li $s1,2 #b
li $s2,3 #c

#mover os valores
add $t0,$s0,$0
add $t1,$s1,$0
add $t2,$s2,$0

beq $t0,$t1,igual #se a==b
#caso for diferente
add $t1, $t0, $t2  # b = a + c
sub $t2, $t1, $t2  # c = b - c
j exit

#caso for igual
igual:
add $t2, $t0, $t1  # c = a + b
sub $t0, $t1, $t2  # a = b - c

exit: