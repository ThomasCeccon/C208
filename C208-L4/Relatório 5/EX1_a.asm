# 1) Converta as instruções abaixo
#a[10]=b-c
.data
a: .space 40  

.text
  li $t0,10 # b
  li $t1,20 # c
  
la $t2, a # enendereço de a
sub $t3,$t0,$t1
sw $t3,40($t2)