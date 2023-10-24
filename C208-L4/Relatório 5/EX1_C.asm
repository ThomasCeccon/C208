.data
c: .space 0 

.text
  li $t0,10 # b
  li $t1,20 # a
  
  la $t2, c # endereço de c
  
  sub $t3, $t0, $t1
  sw $t3, 0($t2)