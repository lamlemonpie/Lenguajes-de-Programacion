.data
ingresar: .asciiz "\nIngrese un numero:"
espacio: .asciiz " "
imprimir: .asciiz "\nLa serie Fibonacci es:"
salto: .asciiz "\n"

.text

main:

  li $v0, 4
  la $a0, ingresar # ingresar
  syscall
  li $v0,5
  syscall
  move  $a1, $v0
  li $a2,0 # Fib inicial 0
  li $a3,1 # Fib inicial 1
  li $t0,1 # Contador i

  li $v0, 4
  la $a0, imprimir # imprimir
  syscall

  move $a0, $a3 # movemos el 1 para imprimirlo.

loop:
  # Condición para terminar.
  bgt $t0, $a1, fin

  li $v0, 1
  syscall

  # espacio
  li $v0, 4
  la $a0, espacio # ingresar
  syscall
  # acumulando fibonacci
  add $a0, $a2, $a3
  move  $a2, $a3
  move  $a3, $a0

  # i++
  add $t0, $t0, 1
  j loop


fin:
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
