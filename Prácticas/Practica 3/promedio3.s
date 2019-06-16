# PROGRAM: Comparison
	.data # Data declaration section
ingresar: .asciiz "\nIngrese un numero\n"

	.text # Assembly language instructions

#v1 menor
#a3 mayor

main: # Start of code section
	li $v0,5
	syscall
	move $a1,$v0
	beq $a1, 0, Fin
	li $a2, 0
	li $a3, 0
	j Ciclo

Ciclo:
	beq $a2, $a1, Then
	li $v0, 4
	la $a0, ingresar
	syscall
	li $v0, 5
	syscall
	add $a3, $a3, $v0
	j Counter
	jr $ra

Counter:
	add $a2, $a2, 1
	j Ciclo

Then:
	div $a0, $a3, $a1
	li $v0, 1
	syscall
	jr $ra

Fin:
	jr $ra