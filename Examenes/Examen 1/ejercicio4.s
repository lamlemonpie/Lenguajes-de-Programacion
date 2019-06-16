# Ingrese un numero
# si es par dividir entre 2
# si es impar multiplicar x 3 y sumarle 1
.data
ingresar: .asciiz "\nIngrese un número:"
espacio: .asciiz " "
salto: .asciiz "\n"

.text

main:
li $v0, 4
la $a0, ingresar # ingresar
syscall
li $v0,5
syscall
move  $t1, $v0 # movemos ingresado
add    $t5, $t1,0
li    $v0, 1
move  $a0, $t5
syscall
# espacio
li $v0, 4
la $a0, espacio
syscall

loop:
  ble $t5,1,fin

  div 	$t3,$t5, 2
  mfhi	$a0				# residuo

  beqz $a0, is_par

  # impar

  mul $t5, $t5, 3
  add $t5, $t5, 1
  li $v0,1
  move $a0, $t5
  syscall
  # espacio
  li $v0, 4
  la $a0, espacio
  syscall

  b loop


is_par:
  add $t5, $t3,0
  li $v0, 1
  move $a0, $t5
  syscall
  # espacio
  li $v0, 4
  la $a0, espacio
  syscall
  b loop

fin:
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
