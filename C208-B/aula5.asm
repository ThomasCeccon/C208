.data
num: .byte 0x20

.text
#addi $t1,$0,0xffffffff
#addi $t1,$0,0x50 #move 0x50 para t1 ou seja $t1=0x50
#addi $t2,$0,0x30 #move 0x30 para t2 ou seja $t2=0x30
#add $t3,$t1,$t2 #$t3=80
#sub $t4,$t1,$t2 #$t4=$t1-$t2  $t4=20
#mul $t5,$t1,$t2 #$t5=$t1*$t2 1500
#div $t6,$t1,$t2 #$t6=$t1/$t2 


addi $t1,$0,0x50  # ou "move $t1,$t2,"

addi $t2,$0,0x30
addi $t3,$t1,0x10
or $t4,$t1,$t2
not $t5,$t1
