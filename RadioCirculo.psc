Algoritmo Pseint2
	
	Escribir "Ingrese el primer radio"
	leer r1
	Escribir "Ingrese el segundo radio"
	leer r2
	
	Si r1 > r2 y r1>0 y r2>0 Entonces
		Escribir r1 " el primer radio es mayor que " r2 " segundo radio"
		area = pi*(r1^2-r2^2)
		Escribir "el area de la corona circular es" area
	Sino
		Escribir r2 " el segundo radio es mayor que " r1 " primer radio"
		area = pi*(r2^2-r1^2)
		Escribir "el area de la corona circular es " area
	FinSi
	Si r1<0 y r2<0 Entonces
		Escribir "Error, son menor que 0, deben ser positivos"
	FinSi
	
FinAlgoritmo
