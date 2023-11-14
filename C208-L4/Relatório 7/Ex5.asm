.text
	addi $t0,$0,54
	addi $t1,$0,67
 	addi $t2,$0,85
	addi $t3,$0,91
	addi $t4,$0,12
	addi $t5,$0,48
	addi $t6,$0,64
	addi $t7,$0,40
	addi $t8,$0,35
	addi $t9,$0,45
	
	#1)51 and 67
	and $s0,$t0,$t1
	
	#2)85 and 91
	and $s1,$t2,$t3
	
	#3)12 or 48
	or $s1,$t4,$t5
	
	#4)64 or 40
	or $s2,$t6,$t7
	
	#5)35 xor 45
	xor $s3,$t8,$t9
	
	