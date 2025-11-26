Algoritmo Pseint
	Escribir "Dime un numero de 5 a 10"
	Leer a
	
	Si (a > 5) Y (a<10) Entonces
		Para i <- a Hasta 50 Hacer
			Si (i % 3 = 0) Entonces
				Escribir i
			FinSi
		FinPara
	Sino 
		Escribir "El numero no esta entre 5 y 10"
	FinSi
	
FinAlgoritmo
