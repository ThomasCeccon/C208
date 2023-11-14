.text
	addi $t0,$0,5 #base menor
	addi $t1,$0,10 #base maior
	addi $t2,$0,2 #altura
	
	add $t3,$t1,$t0 #(B+b)
	mul $t4,$t3,$t2 #(B+b)*h
	div $t5,$t4,2