Proceso Ordenar5Nombres
    Definir n, i, j Como Entero
    Definir aux Como Cadena
	
    Escribir "Numero de nombres que quieres"
    Leer n
    Dimension nombres[5]
	
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Ingresa el nombre ", i, ":"
        Leer nombres[i]
    FinPara
	
    Para i <- 1 Hasta n-1 Con Paso 1
        Para j <- 1 Hasta n-i Con Paso 1
            Si nombres[j] > nombres[j+1] Entonces
                aux <- nombres[j]
                nombres[j] <- nombres[j+1]
                nombres[j+1] <- aux
            FinSi
        FinPara
    FinPara
	
	
    Escribir ""
    Escribir "Nombres ordenados:"
    Para i <- 1 Hasta n Con Paso 1
        Escribir nombres[i]
    FinPara
	
FinProceso


