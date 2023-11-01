.data
	msg: .asciiz "Forneça numero decimal:"
	dez: .float 10.0
	
.text
         #printar a mensagem
	li $v0,4
	la $a0,msg
	syscall
	
	#entrar com inteiro
	li $v0,6
	syscall
	
	lwc1 $f1,dez
	add.s $f12,$f1,$f0      #float soma
	
	li $v0,2
	syscall
