.data
space: .space 5 #resenva na memoria 5 bytes

.text 
	li $v0,8
	la $a0,space
	li $a1,5
	syscall
	