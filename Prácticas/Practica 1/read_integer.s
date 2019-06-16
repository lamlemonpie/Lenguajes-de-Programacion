# PROGRAM: Hello, World!
	.data # Data declaration section
out_string: .asciiz "\nhola!\n"

	.text # Assembly language instructions

main: # Start of code section

	li      $v0,5     # code 5 == read integer
	syscall           # Invoke the operating system.
					  # Read in one line of ascii characters.
					  # Convert them into a 32-bit integer.
					  # $v0 <-- two's comp. int.

	move 	$a0, $v0

	li      $v0,1     # code 1 == print integer
	syscall           # Invoke the operating system.
					  # Convert the 32-bit integer into characters.
					  # Print the character to the monitor.

	jr $ra
