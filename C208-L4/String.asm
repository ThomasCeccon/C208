.data
	a: .asciiz "Entre com seu nome"

.text
	#mostrar a frase entre com seu nome
	li $v0,4
	la $a0,a
	syscall
	