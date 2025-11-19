Algoritmo Triangulo
	Escribir "Ingrese lado 1:"
	Leer a
	Escribir "Ingrese lado 2:"
	Leer b
	Escribir "Ingrese el lado 3:"
	Leer c
	
	si (a+c > b Y a+b>c Y b+c>a) Entonces
		Escribir "Sí es un triángulo"
	SiNo
		Escribir "No es un triángulo"
	FinSi
	
	
	si (a^2 + b^2 = c^2) Entonces
		Escribir "Si es tringulo rectangulo"
	sino 
		Escribir "No es triangulo rectangulo"
	FinSi
	
	Si (a^2 + b^2 = c^2) Entonces
		area=(b*a)/2
		Escribir "El area es: ",area
	SiNo 
			Escribir "No es triangulo rectangulo"
	FinSi
	
FinAlgoritmo
