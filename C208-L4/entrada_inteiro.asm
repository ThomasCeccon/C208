#ler inteiro
.data
	
.text
	#entrada 1
	li $v0,5
	syscall
	
	#mover o registrador para outro
	add $s1,$a0,$0
	
	#entrada 2
	li $v0,5
	syscall
	
	#mover o registrador para outro
	add $s2,$a0,$0