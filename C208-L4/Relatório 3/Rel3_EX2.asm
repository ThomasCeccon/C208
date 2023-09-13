#2)usuario entrar com idade, e mostre a idade dele daqui 30 anos
.data
	frase: .asciiz "Olá. por favor, entre com sua idade: "
	saida: .asciiz "Sua idade é: "

.text    
         li $t1,30 #valor de 30
	li $v0,4 #imprimir uma string
	la $a0,frase #mostrar  impressao
	syscall #valor lido passado para $v0

	li $v0,5 #leitura de inteiros
	syscall

#fazer uma copia para nao perder o valor
	move $t2,$v0 #valor fornecido esta em $t9
	li $v0,4 #imprimir uma string
	la $a0,saida #mostrar  impressao
	syscall #valor lido passado para $v0

	
	# Imprimir o resultado
	li $v0, 1       # Código da syscall para imprimir um inteiro
	mul $t2,$t2,$t1
	move $a0, $t2   # Coloca o resultado da multiplicação em $a0 para impressão
	syscall

	


