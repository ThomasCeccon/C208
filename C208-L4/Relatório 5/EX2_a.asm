.data
b: .space 60  

.text
  li $t0,20 # c
  
  la $t1, b # endereço de b
  lw $t1, 60($t1) #b[15]
  sub $t2, $t1, $t0 