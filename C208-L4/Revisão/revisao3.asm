#3 converta a sequinte instrução em assembly MIPS.

#a=$s0 , b=$s1, c=$s2 , d=$s4
#c[5]=a[4]+d-c  -> (Store)antes do igual     (Load) depois do igual
#MULTIPLICAR POR 4 bits

.text 

#1)comecar depois da igualdade
lw $t0,16($s0) #registrador memoria
add $t1,$t0,$s4
sub $t2,$t1,$s2
sw $t2,20($s2)


