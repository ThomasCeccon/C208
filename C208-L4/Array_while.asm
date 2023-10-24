.data #0x10010000

vetora: .word 2,6,5,8,10

.text #0x0040000

	la $s1,vetora # carregar endereco inicial $s1=0x10010000

	#pegar o que esta na memoria e passar para o registrador
	li $t2, 0 #i=0
	li $s0, 0 # j=0
	
	while:ble $s0,2,LOOP # $s0<2
	
	j exit
	
	LOOP:
	sll $t3,$t3,2 # $t3=$t2(0) << 2
	add $t1,$t2,$s1 # t1=0+0x10010000
	lw $t5,0($t1) #pega o que esta na memoria e passa para o registrador
	addi $s0,$s0,1 #s0=s0+1
	addi $t2,$t2,1 #t2=t2+1
	j while
	
	EXIT:
	

