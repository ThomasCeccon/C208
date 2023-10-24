.text
li $s0 ,10
li $s1 ,5
li $s2, 2
li $s4 ,15

sub $t0,$s0,$s1# (a-b)
sub $t1,$s4,$t0 # e-(a-b)
sub $t2,$s1,$s2 #(b-c)
add $s5,$t1,$t2 #(a-b)+(b-c)