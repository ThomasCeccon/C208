.data
	frase1: .asciiz "Entre com o primeiro numero"
	frase2: .asciiz "Entre com o segundo numero"
	frase3: .asciiz "Entre com o terceiro numero"
	frase_maior: .asciiz "A soma é maior que 100"
	frase_menor: .asciiz "A soma é menor que 100"
	frase_igual: .asciiz "A soma é igual a 100"
	
.text 

#//////////////////frase 1///////////////
	#imprimir uma string
	li $v0,4
	la $a0,frase1
	syscall
	
	#leitura de inteiro
	li $v0,5
	syscall
	add $t0,$v0,$0 #move
	
#//////////////////frase 2///////////////
	#imprimir uma string
	li $v0,4
	la $a0,frase2
	syscall
	
	
	#leitura de inteiro
	li $v0,5
	syscall
	add $t1,$v0,$0 #move
#//////////////////frase 3///////////////
	#imprimir uma string
	li $v0,4
	la $a0,frase3
	syscall
	
	#leitura de inteiro
	li $v0,5
	syscall
	add $t2,$v0,$0 #move
	
	
	#processamento
	add $t3,$t0,$t1      
	add $t4,$t3,$t2
	
	bgt $t4,100,maior #if($t4>100)
	beq $t4,100,igual #if($t4==10)
	
	#falso
	li $v0,4
	la $a0,frase_menor
	syscall
	j fim
	
	#verdadeiras
	maior:
	li $v0,4
	la $a0,frase_maior
	syscall
	j fim
	
	igual:
	li $v0,4
	la $a0,frase_igual
	syscall
	j fim
	
	fim:
	li $v0,10 #exit
	syscall
	
        
	