# 1) Converta as instruções abaixo
#b[245]=a+c
.data

b: .space 980 

.text
li $t0,10 # a
li $t1,20 # c
  
la $t2, b # endereço de b
  
add $t3, $t0, $t1
sw $t3, 980($t2)
