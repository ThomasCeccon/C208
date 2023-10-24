.data 
	vetora: .word 4,5
.text
 #c[i]
 #c[i+1]
 #c[i+2]
 li $t0,0 #j=0
 la $t1,vetora #vetor a $s1=&vetora
 lw $t2,0($t1) #a[0]
 
 blt $t2,5 verdade:
 lw $t3,4($t2) #a[1]
 addi $t3,$t0,10
 j exit
 
 verdade: addi $t2,$t0,2
 exit:
