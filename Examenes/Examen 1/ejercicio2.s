# suma de los numero primos menores a n
.data
ingresar: .asciiz "\nIngrese un número:"
espacio: .asciiz " "
imprimir: .asciiz "\nLos números primos son:"
suma: .asciiz "\nLa suma es:"
salto: .asciiz "\n"
.text
main:
li $v0, 4
la $a0, ingresar # ingresar
syscall
li $v0,5
syscall
move  $t6, $v0 # movemos ingresado
li $t7,2 # iterador de numeros
li $t5,0 # cantidad primos
li $s3,0 # suma total
loop:
  bge $t7,$t6,fin

  # verificamos si es primo!

add   $t2,$t7,0 # numero que iterará entre todos
li   $t3,0 # contador de divisores

loopprimo:
  beqz   $t2,verificar

  div 	$t4,$t7, $t2
  mfhi	$t5				# residuo

  beqz $t5, is_divisor
  b cont
is_divisor:
    add $t3,$t3,1 # aumentamos cantidad de divisores

cont:
    add    $t2,$t2,-1 # disminuimos iterador
    b loopprimo

verificar:
ble $t3,2,es_primo
b continue
es_primo:
li $v0, 1
move $a0, $t7
syscall
li $v0, 4
la $a0,espacio
syscall
# sumamos el total
add    $s3,$s3,$t7
b continue


continue:
add    $t7,$t7,1 # i++
b loop

b fin

fin:
  li $v0, 4
  la $a0, suma
  syscall
  li $v0, 1
  move $a0, $s3
  syscall
  li $v0, 4
  la $a0, salto # salto de linea
  syscall
  jr $ra
