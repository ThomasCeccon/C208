#construcao de loop
.data

#1)colocar o vetor na memoria
dado1: .word 0x000000010
dado2: .word 0x000000010
dado3: .word 0x000000010
dado4: .word 0x000000020

.text 
li $s5,0x00000010 #valor a ser comparado (k)
li $s6,0x10010000 #end. base do vetor "save"
li $s3,0 #inicializa o offset

loop:
	add $t1,$s3,$s3 #t1=2*offset
	add $t1,$t1,$t1 #t1=4*offset
	add $t1,$s6,$t1 #t1 recebe o endereco base somando ao offset
	lw $t0,0($t1)  # carrega a posicao i do vetor em $t0
	bne $t0,$s5,fim #se for diferente fim, se igual (compara valor de k)
	add $s3,$s3,$s4 #incrementa o offset
	j loop
	fim:
	
