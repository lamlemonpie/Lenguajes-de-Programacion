.globl main
.text
main:
li.s $f1, 2.0
li.s $f2, 9.0
li $v0, 2
div.s $f12,$f1,$f2
syscall
li $v0, 10
syscall
