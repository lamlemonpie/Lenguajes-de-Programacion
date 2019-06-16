.data
  ingresar1: .asciiz "\nIngrese un numero:"
  ingresar2: .asciiz "\nIngrese otro numero:"
  division: .asciiz "\nLa división es:"
  salto: .asciiz "\n"
.text

main:
li $v0, 4
la $a0, ingresar1 # ingresar1
syscall

li $v0,6
syscall
mov.s  $f1, $f0  # guardamos el primero

li $v0, 4
la $a0, ingresar2 # ingresar2
syscall

li $v0,6
syscall
mov.s  $f2, $f0  # guardamos el segundo

div.s $f12, $f1, $f2

li $v0, 4
la $a0, division # la division es
syscall

# imprimir resultado
li $v0, 2
syscall


li $v0, 4
la $a0, salto # salto de linea
syscall
jr $ra
