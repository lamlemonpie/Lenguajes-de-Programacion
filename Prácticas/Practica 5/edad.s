.data
ingresar: .asciiz "\nIngrese su año de nacimiento:"
espacio: .asciiz " "
imprimir: .asciiz "\nUsted tiene:"
salto: .asciiz "\n"
.text

main:
li $v0, 4
la $a0, ingresar # ingresar
syscall
li $v0,5
syscall
move  $a1, $v0

li $a2,2019

li $v0, 4
la $a0, imprimir # imprimir
syscall

sub $a0, $a2,$a1  # resta

li $v0, 1
syscall

b fin

fin:
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
