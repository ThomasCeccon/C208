.text
	addi $t0,$0,3 #g=3
	addi $t1,$0,5 #h=5
	addi $t2,$0,2 #i=2
	addi $t3,$0,1 #j=1
	
	add $t4,$t0,$t1 #(g+h)
	add $t5,$t2,$t3 #(i+j)
	sub $t6,$t4,$t5 #f=(g+h) - (i+j)