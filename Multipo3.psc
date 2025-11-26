Algoritmo Pseint
	//Darme un numero
	Escribir "Dime un numero de 5 a 10"
	Leer a
	
	//Asegurarnos que el numero sea entre el 5 al 10
	Si (a > 5) Y (a<10) Entonces
		//si el numero esta entre  esos valores, i siendo a, se repiete 50 veces
		Para i <- a Hasta 50 Hacer
			//si i se divide entre 3 y el resto es 0, se escribe el numero
			Si (i % 3 = 0) Entonces
				Escribir i
			FinSi
		FinPara
	Sino 
		Escribir "El numero no esta entre 5 y 10"
	FinSi
	
FinAlgoritmo
