.text
addi $t1,$0,0x20 #valor imediato $t1 recebe 20
addi $t2,$0,0x30 #valor imediato $t2 recebe 30
add $t3,$t2,$t1 #$t3 recebe $t2 + $t1
sub $t4,$t2,$t1 #$t4 recebe $t2 - $t1
or $t5,$t2,$t3
xori $t6,$t2,0x23 #imediata passa direto os bytes, no caso 23

#inverter 
#sub $t4,$t1,$t2 #$t4 recebe $t1 - $t2 20-30 