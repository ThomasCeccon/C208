.text
#addi $t1,$0,10 ou li $t1,10  (carregamento imediato) //adicionar 10 a $t1
li $t1,10 
li $t2,2

bge $t1,10,menor #se for falsa pula para proxima linha
addi $t2,$t2,-1 #caso for falso
j fim#desvair 
menor:
addi $t2,$t2,2#caso for verdadeiro
fim: