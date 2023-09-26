.text
li $t1,1 #x
li $t2,2 #y

retorna:
blt $t1,5,verdadeiro
j fim
verdadeiro:
addi $t1,$t1,2 #x
addi $t2,$t2,1#y
j retorna
fim:


