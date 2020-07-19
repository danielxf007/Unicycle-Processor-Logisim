#Generar los 50 primeros numeros triangulares
#Los numeros son 0 1 3 6 10 ... -> T(n) = T(n-1) + n
addi $sp, $sp, -200 # Separamos 50 palabras en memoria
add $t0, $zero, $zero # Caso base T(0) = 0, tambien sirve como acumulador
sw $t0, 0($sp) # Se escribe el numero en memoria
addi $sp, $sp, 4 # Se mueve el apuntador para almacenar el siguiente numero
addi $t1, $zero, 1 # Se cacula el siguiente indice n-esimo numero triangular
addi $t2, $zero, 50 # Tope
LOOP: beq $t1, $t2, ENDLOOP # Se verifica que se termino de guardar los 50 numeros
    add $t0, $t0, $t1 # Se calcula el siguiente numero triangular
    sw $t0, 0($sp) # Se guarda en memoria el nuevo numero
    addi $sp, $sp, 4  # Se mueve el apuntador para almacenar el siguiente elemento
    addi $t1, $t1, 1 # Se cacula el siguiente indice n-esimo numero triangular 
    j LOOP
ENDLOOP: 