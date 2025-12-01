//Funcion que muestra primero el array
Funcion LlamarAMiFuncion(N, MiArray)
    Escribir "Array modificado en el programa principal:"
    Para i <- 1 Hasta N //definimos el array con la funcion entre parentesis para que los cambios hechos en la funcion se aparezcan despues en la array
        Escribir MiArray[i]
    FinPara
FinFuncion

//funcion dentro del array que modificamos para que s emuestre despues en el array
Algoritmo Arraymodficado
    Dimension MiArray[10] //defino el array principal, tiene un tamaño de 10
    
    Escribir "Ingrese el tamaño del array <10: "
    Leer N
    
    // Funcion para ir incrementar lo que tiene el array
    Para i <- 1 Hasta N
        MiArray[i] <- i * 2 //asigamos valores al array
    FinPara
    
    // Llamo a la función para mostrar el array
    LlamarAMiFuncion(N, MiArray)
	
FinAlgoritmo
