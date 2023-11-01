	.data
	n: .word
	frase1: .asciiz "Entre com o valor de N: "
	frase2: .ascii "A diferença é de: "

	.text
	#=====================Entrada de dados====================
  	# imprimir frase 1 
  	li $v0, 4
  	la $a0, frase1
  	syscall

  	# entrar com n
  	li $v0, 5
  	syscall
  	sw $v0, n  # valor do registrador passa para a memoria

  	lw $t0, n  # valor da memoria passa para o registrador
  	addi $t0, $t0, 1 #incrementa $t0
  	li $t1, 1  # iterador 1 -> N
  	li $t2, 0  # soma
  	li $t3, 0  # soma dos quadrados

	#===============processamento===============
	retorna:
  	# Soma
  	add $t2, $t2, $t1 # $t2 += $t1

  	# Quadrado e soma dos quadrados
  	mul $t4, $t1, $t1   # $t4 = $t1 * $t1
  	add $t3, $t3, $t4   # $t3 += $t4

  	# Parada
  	addi $t1, $t1, 1    # $t1++
  	beq $t1, $t0, exit  # if($t1==N) termina o loop
 	 j retorna

	exit:
  	# Quadrado da soma
  	mul $t2, $t2, $t2 # $t2 = $t2*$t2

  	# Diferença
  	sub $t5, $t2, $t3 # $t5 = $t2 - $t3

  	# Imprimindo diferença
  	li $v0, 4
  	la $a0, frase2
  	syscall 
  	
  	li $v0, 1
  	add $a0,$t5,$0 
  	syscall 