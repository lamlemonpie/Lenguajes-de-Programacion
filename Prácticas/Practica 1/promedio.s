.data # Data declaration section

.text # Assembly language instructions

main: # Start of code section

	li      $v0, 5    # Leer int
  syscall           # Ejecutar
  move 	$a1, $v0    # Mover a registro a1

  li      $v0, 5
  syscall
  move 	$a2, $v0    # Mover a registro a2

  add $a3, $a1, $a2 # Sumar
  div $a0, $a3, 2   # dividir

  li      $v0, 1    # Imprimir prom en registro a0
	syscall

	jr $ra
