#Generar los 50 primeros elementos de la serie de Fibonacci
# La serie es de la forma 0 1 1 2 3 5 ... -> F(n) = F(n-1) + F(n-2)
addi $sp, $sp, -200 # Separamos 50 palabras en memoria
add $t0, $zero, $zero # F(0) primer elemento de la serie
addi $t1, $zero, 1 # F(1) segundo elemento de la serie
sw $t0, 0($sp) #Se guardan en memoria los elementos
sw $t1, 4($sp)
addi $sp, $sp, 12 # Se mueve el apuntador para almacenar el siguiente elemento
addi $t3, $zero, 48 # Cantidad de elementos que faltan por ser almacenados
LOOP: beq $t3, $zero, ENDLOOP # Se verifica que se termino de guardar los 50 numeros
    add $t2, $t1, $t0 # Se calcula el siguiente numero de Fibonacci, si se pone add hay overflow
    sw $t2, 0($sp) # Se guarda en memoria el nuevo numero
    add $t0, $zero, $t1 # Se intercambian los valor de registro
    add $t1, $zero, $t2
    addi $sp, $sp, 4  # Se mueve el apuntador para almacenar el siguiente elemento
    addi $t3, $t3, -1 # Se descuenta 1 a la cantidad de elementos que faltan por almacenar
    j LOOP
ENDLOOP:
