lw $t6, 0($sp)
lw $t1, 0($t0)
add $t0, $t0, $t1
lw $t2, 0($t0)
add $t0, $t0, $t1
lw $t3, 0($t0)
and $t4, $t3, $t2
or $t4, $t3, $t2
nor $t4, $t3, $t2
slt $t4, $t3, $t2
LOOP: beq $t4, $zero, ENDLOOP
    add $t3, $t3, $t2
    slt $t4, $t1, $t3
    add $t0, $t0, $t1
    j LOOP
ENDLOOP: jal JAL
sw $t1, 4($t0)
sub $t3, $t3, $t2
sw $t3, 4($t0)
lw $t5, 4($t0)
j END
JAL: jr $ra
END: