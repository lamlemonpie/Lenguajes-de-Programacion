# PROGRAM: Comparison
	.data # Data declaration section
no: .asciiz "\nNo es triangulo\n"
si: .asciiz "\nSí es triangulo\n"

	.text # Assembly language instructions

#v1 menor
#a3 mayor

main: # Start of code section
	li $v0,5
	syscall
	move $a1,$v0
	li $v0,5
	syscall
	move $a2,$v0
	li $v0,5
	syscall
	move $a3,$v0

	add $v1, $a1, $a2
	ble $v1, $a3, Else
	add $v1, $a1, $a3
	ble $v1, $a2, Else
	add $v1, $a2, $a3
	ble $v1, $a1, Else
	li $v0, 4
	la $a0, si
	syscall
	jr $ra

Else:
	li $v0, 4
	la $a0, no
	syscall
	jr $ra
