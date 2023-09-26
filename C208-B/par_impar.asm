.data 
	frase1: .asciiz "Entre com um inteiro e positivo"
	frase2: .asciiz "Eh par"
	frase3: .asciiz "Eh impar"
	
.text 

	li $t2,2
	
	#imprimir uma string
	li $v0,4 #imprimir uma string
	la $a0,frase1 #mostrar  impressao 
	syscall #valor lido passado para $v0
	
	#entrar com inteiro
	li $v0,5
	syscall
	
	#salvar o valor lido em algum registrador
	add $t1,$v0,$0
	div $t1,$t2
	mfhi $t3
	beqz $t3,par
		li $v0,4 #imprimir uma string
		la $a0,frase3 #mostrar impar
		syscall
		j fim
	par: li $v0,4
	     la $a0,frase2 #mostrar par
	     syscall #valor lido passado para $v0
	fim:
              li $v0,10
              syscall
	
	
	