.data
salto: .asciiz "\n"
tmayor: .asciiz "\nMAYOR:\n"
tmenor: .asciiz "\nMENOR:\n"
.text

main:

    li 		$v0, 5 # leer int
    syscall
    move 	$t1, $v0
    add  $t3, -999999 # mayor
    add  $t4, 999999  # menor
loop:
    beqz   $t1,fin

    # move   $a0, $t1
    # li     $v0, 1
    # syscall
    # li $v0, 4 				# system call code for printing string = 4
    # la $a0, salto 		# load address of string to be printed into $a0
    # syscall

    li 		$v0, 5 # leer int
    syscall
    move 	$t2, $v0

    ble   $t2,$t4,menor

    bge   $t2,$t3,mayor


continue:
    add    $t1,$t1,-1
    b loop

fin:
    li $v0, 4 				# system call code for printing string = 4
    la $a0, tmenor 		# load address of string to be printed into $a0
    syscall
    move   $a0, $t4
    li     $v0, 1
    syscall

    li $v0, 4 				# system call code for printing string = 4
    la $a0, salto 		# load address of string to be printed into $a0
    syscall

    li $v0, 4 				# system call code for printing string = 4
    la $a0, tmayor 		# load address of string to be printed into $a0
    syscall
    move   $a0, $t3
    li     $v0, 1
    syscall

    li $v0, 4 				# system call code for printing string = 4
    la $a0, salto 		# load address of string to be printed into $a0
    syscall

    jr $ra

menor:
    move $t4,$t2
    b continue

mayor:
    move $t3,$t2
    b continue
