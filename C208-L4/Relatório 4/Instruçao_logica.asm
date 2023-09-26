
#1)
.text
li $t0,10
li $t1,25
li $t2,43
li $t3,89
#a)deslocamento de 8 bits para a direita
srl $s0,$t0,8
srl $s1,$t1,8
srl $s2,$t2,8
srl $s3,$t3,8

#b)deslocamento de 4 bits para a esquerda
sll $s4,$t0,4
sll $s5,$t1,4
sll $s6,$t2,4
sll $s7,$t3,4

