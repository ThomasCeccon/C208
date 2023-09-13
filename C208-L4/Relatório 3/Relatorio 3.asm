#1)realizar as operacoes
.text
#a)2+5
li $s1,2
li $s2,5
add $s3,$s1,$s2

#b)89+20
li $s4,89
li $s5,20
add $s6,$s4,$s5

#c)-80+1234
li $t1,-80
li $t2,1234
add $t0,$t1,$t2

#d)70-24
li $t4,70
li $t5,24
sub $t3,$t4,$t5

#e)20-150
li $t6,20
li $t7,150
sub $t8,$t6,$t7

#2)usuario entrar com idade, e mostre a idade dele daqui 30 anos
.data
frase: .asciiz "Olá. por favor, entre com sua idade: "
saida: .asciiz "Sua idade é: "

.text
li $v0,4 #imprimir uma string
la $a0,frase #mostrar  impressao
syscall #valor lido passado para $v0

li $v0,5 #leitura de inteiros
syscall

#fazer uma copia para nao perder o valor
move $t9,$v0 #valor fornecido esta em $t9
li $v0,4 #imprimir uma string
la $a0,saida #mostrar  impressao
syscall #valor lido passado para $v0

li $v0,1 #imprimir inteiros
move $a0,$t9 #o que esta em $t9 passa para $a0
syscall

li $v0,1 #imprimir inteiros
move $a0,$t9 #o que esta em $t9 passa para $a0
mul $s7,$a0,30
syscall



#3)

