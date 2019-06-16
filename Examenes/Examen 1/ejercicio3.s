# ingresa un numero y retorne la division entre 4
# operadores de desplazamiento

.data
ingresar: .asciiz "\nIngrese un número:"
imprimir: .asciiz "\nLa division entre 4 es:"
salto: .asciiz "\n"
.text

main:
li $v0, 4
la $a0, ingresar # ingresar
syscall
li $v0,5
syscall
move  $t1, $v0 # movemos ingresado
li $t2,0 # suma acumulada
li $t3,0 # cociente acumulado
loop:

# verificar si la suma pasa
  beq $t2, $t1,findiv
  bgt $t2, $t1,finnodiv

# sumar
  add $t2,$t2,4
  add $t3,$t3,1

  b loop

findiv:
  li $v0, 4
  la $a0, imprimir # res
  syscall

  li $v0, 1
  move $a0, $t3
  syscall
  b fin
finnodiv:
  li $v0, 4
  la $a0, imprimir # res
  syscall

  li $v0, 1
  add $t3, $t3,-1
  move $a0, $t3
  syscall
  b fin

fin:
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
