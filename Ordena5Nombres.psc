Proceso Ordenar5Nombres
	//definimos las variables que necesitamos apara operar
	//n =  numero de nombres
	//i = valor que le damos al primer bucle
	//j = valor que le damos al segundo bucle
    Definir n, i, j Como Entero
    Definir aux Como Cadena
	
	//definimos el numero de nombres que debemos pedir
    Escribir "Numero de nombres que quieres"
    Leer n
	//solo permito un array de 5 nombres
    Dimension nombres[5]
	
	// Bucle para leer los nombres del usuario
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Ingresa el nombre ", i, ":"
        Leer nombres[i]
    FinPara
	
	//bucle para crear lista
    Para i <- 1 Hasta n-1 Con Paso 1
        Para j <- 1 Hasta n-i Con Paso 1  // Compara cada nombre con el siguiente
            Si nombres[j] > nombres[j+1] Entonces  // Si el nombre actual es mayor al siguiente (alfabéticamente)
                aux <- nombres[j]  // entonces están mal ordenados y se intercambian
                nombres[j] <- nombres[j+1]  // entonces están mal ordenados y se intercambian
                nombres[j+1] <- aux  // entonces están mal ordenados y se intercambian
            FinSi
        FinPara
    FinPara
	
	// Imprime el resultado final ya ordenado
	//linna vacia como espaciado
    Escribir ""
	// Imprime el resultado final ya ordenado
    Escribir "Nombres ordenados:"
    Para i <- 1 Hasta n Con Paso 1
        Escribir nombres[i]
    FinPara
	
FinProceso


