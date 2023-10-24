.data #0x10010000

vetora: .word 2,6,5

.text #0x0040000

	la $s1,vetora # carregar endereco inicial $s1=0x10010000

	#pegar o que esta na memoria e passar para o registrador
	lw $t1, 0($s1)
	lw $t2, 4($s1)
	lw $t3, 8($s1)
