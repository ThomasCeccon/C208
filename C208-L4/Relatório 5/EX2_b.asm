.data
a: .space 20 #5*4=20
c: .space 12 # 3*4=12 .word sao 4 bytes

.text 
  la $t0, a # endereço de a
  lw $t0, 20($t0) # valor a[5]
  
  la $t1, c # endereço de c
  lw $t1, 12($t1) # valor c[3]
  
  add $t2, $t0, $t1 # $t3 = b