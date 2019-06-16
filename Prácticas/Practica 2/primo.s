.data
tprimo: .asciiz "\nES PRIMO:\n"
tnprimo: .asciiz "\nNO ES PRIMO:\n"
.text

main:

  li 		$v0, 5 # leer int
  syscall
  move 	$t1, $v0
  add   $t2,$t2,$t1
  add   $t3,0


loop:
  beqz   $t2,fin

  div 	$t4,$t1, $t2
  mfhi	$t5				# residuo

  beqz $t5, is_divisor
  b continue
is_divisor:
    add $t3,$t3,1

continue:
    add    $t2,$t2,-1
    b loop


fin:
  move $a0,$t3
  li $v0, 1
  syscall
  bge $t3,3,no_primo

  li $v0, 4 				# system call code for printing string = 4
  la $a0, tprimo 		# load address of string to be printed into $a0
  syscall
  jr $ra
no_primo:
  li $v0, 4 				# system call code for printing string = 4
  la $a0, tnprimo 		# load address of string to be printed into $a0
  syscall
  jr $ra
