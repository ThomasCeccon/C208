.data
	frase1: .asciiz "Entre com sua idade: "
	frase2: .asciiz "Voce e maior de idade"
	frase3: .asciiz "Voce e menor de idade"
	
.text
	
	#imprimir uma string
	li $v0,4 #imprimir uma string
	la $a0,frase1 #mostrar  impressao 
	syscall #valor lido passado para $v0
	
	#leitura de inteiros
	li $v0,5 
	syscall
	
	#fazer uma copia para nao perder o valor
	
	move $t1,$v0 #valor fornecido esta em $t1 ou add $t1,$v0,$0
	bge $t1,18,maior
	li $v0,4 #imprimir uma string
	la $a0,frase3 #mostrar  impressao
	syscall #valor lido passado para $v0
	j fim
	maior:
	li $v0,4 #imprimir uma string
	la $a0,frase2 #mostrar  impressao
	syscall #valor lido passado para $v0
	fim: 
	li $v0,10
	syscall
	
