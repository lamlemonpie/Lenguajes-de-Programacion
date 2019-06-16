.data # Data declaration section
  buffer: .space 20


.text # Assembly language instructions

main: # Start of code section


	li      $v0, 8
  la      $a0, buffer
  li      $a1, 20
	syscall

  li      $v0, 4
  syscall

	jr $ra
