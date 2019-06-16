
	.data # Data declaration section
	par: .asciiz "\nPAR\n"
	impar: .asciiz "\nIMPAR\n"
	.text # Assembly language instructions

main: # Start of code section

	li 		$v0, 5 # leer int
	syscall
	move 	$t1, $v0
	# move	$t2, 2

	div 	$t1,$t1, 2
	mfhi	$a0				# residuo

	beqz $a0, is_par


	li $v0, 4 				# system call code for printing string = 4
	la $a0, impar 		# load address of string to be printed into $a0
	syscall

	jr $ra          		# retrun to caller

is_par:
	li $v0, 4 				# system call code for printing string = 4
	la $a0, par 		# load address of string to be printed into $a0
	syscall

	jr $ra          		# retrun to caller
