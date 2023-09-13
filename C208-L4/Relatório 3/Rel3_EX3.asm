	
.text
	li $t1,54
	li $t2,45

# Imprimir o resultado
	li $v0, 1       # Código da syscall para imprimir um inteiro
	add $t0,$t1,$t2
	move $a0, $t0   # Coloca o resultado da multiplicação em $a0 para impressão
	syscall



