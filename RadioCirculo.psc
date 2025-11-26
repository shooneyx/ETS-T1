Algoritmo Pseint2
	
	//escribe dos radios
	Escribir "Ingrese el primer radio"
	leer r1
	Escribir "Ingrese el segundo radio"
	leer r2
	
	//si el numero dado de radio 1 es ayor que el radio 2, y ademas, ambos radios son positivos
	Si r1 > r2 y r1>0 y r2>0 Entonces
		Escribir r1 " el primer radio es mayor que " r2 " segundo radio"
		//formula  para calcular radio con r1 y r2 (valores que les dimos)
		area = pi*(r1^2-r2^2)
		Escribir "el area de la corona circular es" area
	Sino
		//si r2 es es mayor r1, entonces hacemos la formula pero cambiando el valor que resta
		Escribir r2 " el segundo radio es mayor que " r1 " primer radio"
		area = pi*(r2^2-r1^2)
		Escribir "el area de la corona circular es " area
	FinSi
	//si no es positivo, no permite hacerse la operacion
	Si r1<0 y r2<0 Entonces
		Escribir "Error, son menor que 0, deben ser positivos"
	FinSi
	
FinAlgoritmo
