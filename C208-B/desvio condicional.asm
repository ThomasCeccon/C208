#desvio condicional
.text
li $t0,0x50 #mostrar 50 no $t0 f
li $t1,0x40 #mostrar 40 no $t0 g
li $t2,0x30 #mostrar 30 no $t0 h
li $t3,0x20 #mostrar 20 no $t0 i
li $t4,0x20 #mostrar 10 no $t0 j

slt $t6,$t2,$t1 #compara t2<t1 se sim t6 será ligado

beq $t3,$t4,L1 #if (i==j)
add $t0,$t1,$t2
j fim #jump(pular) e fim
L1: sub $t0,$t0,$t3
fim:
