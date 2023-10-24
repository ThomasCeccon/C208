.data
a: .space 84  

.text
  li $t0,5 # b
  
  la $t1, b # endereço de a
  lw $t1, 84($t1) # valor a[21]
  
  sub $t2, $t0, $t1 # $t3 = c