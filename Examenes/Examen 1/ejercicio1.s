# imprimir le numero mayor
.data # Data declaration section
ingrese1: .asciiz "\nIngrese un número:"
ingrese2: .asciiz "\nIngrese otro número:"
may:		 .asciiz "\nEl mayor es:"
salto: .asciiz "\n"

.text # Assembly language instructions

main: # Start of code section

	li			$v0,4
	la $a0, ingrese1
	syscall
	li      $v0, 5 # Leer int
  syscall        # Ejecutar
  move 	$a1, $v0 # Mover registro

	li			$v0,4
	la $a0, ingrese2
	syscall
	li      $v0, 5 # Leer int
  syscall        # Ejecutar
  move 	$a2, $v0 # Mover registro


  bge $a1,$a2,jmayor # Compara y salta

  # Mayor
	li $v0, 4 				# system call code for printing string = 4
	la $a0, may		# load address of string to be printed into $a0
	syscall
	li $v0, 1
	move $a0, $a2
	syscall
	b fin

jmayor:
		li $v0, 4 				# system call code for printing string = 4
    la $a0, may		# load address of string to be printed into $a0
		syscall
		li $v0, 1
		move $a0, $a1
    syscall
		b fin

fin:
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
