.data # Data declaration section
mayor: .asciiz "\nMAYOR\n"
menor: .asciiz "\nMENOR\n"

.text # Assembly language instructions

main: # Start of code section

	li      $v0, 5 # Leer int
  syscall        # Ejecutar
  move 	$a1, $v0 # Mover registro

  bge $a1,10,jmayor # Compara y salta

  # Menor
  li $v0, 4 				# system call code for printing string = 4
	la $a0, menor 		# load address of string to be printed into $a0
	syscall
	jr $ra

jmayor: li $v0, 4 				# system call code for printing string = 4
      la $a0, mayor 		# load address of string to be printed into $a0
      syscall
      jr $ra
