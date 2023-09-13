#programa armazenado na memoria
.data #comeca no 0x10010000
cadeia: .ascii "abcde" #0x400000
octeto: .byte 0xff #0x400004
string: .asciiz "teste" #0x400008

#Quem processa os dados é  a cpu