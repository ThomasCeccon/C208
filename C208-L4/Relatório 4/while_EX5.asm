.text
li $t0, 10 # i=10
li $t1, 0 # cont=0

retorna:
bgt $t0,0,verdadeiro
j exit

verdadeiro:
  add $t1, $t1, 5
  sub $t0, $t0, 2
  j retorna
fim: