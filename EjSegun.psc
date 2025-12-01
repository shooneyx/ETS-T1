Algoritmo EjSegun
	
	Definir juego Como Caracter //defino juego como palabra
	Escribir "¿A que juego quieres jugar: adivinanumero, triangulo, media?"
	Leer juego
	juego <- Minusculas(juego) //pilla toda la palabra
	
	Repetir //1º bucle
		Si (juego<>"adivinanumero") Y (juego<>"triangulo") Y (juego<>"media") Entonces //si la palabra no es uno de estos juegos, no pasa y debes volver a escribirlo
			Escribir "Hubo un error. Elige uno de estos juegos: avidinanumero, triangulo, media."
		FinSi
	Hasta Que (juego="adivinanumero") O (juego="triangulo") O (juego="media") //si pilla que escribiste UNO D ELOS JUEGOS. sigue para el siguiente bucle
	
	Segun juego Hacer
		"adivinanumero": //ADIVINAR EL NUMERO
			Definir eleccion Como Caracter //eleccion sera un valor escrito
			
			Escribir "¿Quieres jugar al juego de adivina un número?"
			Leer eleccion
			
			Repetir //1º bucle
				eleccion <- Minusculas(eleccion) //pilla toda palabra
				Si (eleccion<>"si") Y (eleccion<>"no") Entonces //si la palabra no es si o no, no pasa y debes volver a escribirlo
					Escribir "Hubo un error. Escribe si o no."
					Leer eleccion
				FinSi
			Hasta Que (eleccion="si") O (eleccion="no") //si pilla que escribiste si o no, sigue para el siguiente bucle
			intentos<-10 //numero de intentos que tiene el jugador
			num_aleatorio <- azar(100)+1 //el numero aleatorio tiene que ser de 1 a 100
			
			Definir num_jugador Como Entero //definimso las varaibles de la siguiente funcion como numeros
			
			Escribir "Adivine el numero (de 1 a 100):"
			Leer num_jugador //numero que elige el jugador
			Mientras num_aleatorio<>num_jugador Y intentos>1 Hacer //si no adivina el que ha elegido la IA y hay mas de 1 intento
				Si num_aleatorio>num_jugador Entonces //se dan pista si el numero que elegiste menor o mayor
					Escribir "Muy bajo"
				Sino 
					Escribir "Muy alto"
				FinSi
				
				intentos <- intentos-1 //por cada intento que uses, si no adivinas, se te resta uno
				Escribir "Le quedan ",intentos," intentos:" //te va diciendo por cada intento que uses
				Leer num_jugador
			FinMientras
			
			Si num_aleatorio=num_jugador Entonces //si has adivinado el numero de la IA
				Escribir "¡Felicidades! Has adivino en ",11-intentos," intentos."
			Sino
				Escribir "El numero era: ",num_aleatorio
			FinSi
			
		"triangulo": //3 SEGMENTOS = TRIANGULO 
			//Ingresamos el valor de cada lado
			Escribir "Ingrese lado 1:"
			Leer a
			Escribir "Ingrese lado 2:"
			Leer b
			Escribir "Ingrese el lado 3:"
			Leer c
			
			//Si se cumple la condicion de que la suma de dos lados sean mayor que el tercer lado
			si (a+c > b Y a+b>c Y b+c>a) Entonces
				Escribir "Sí es un triángulo"
			SiNo
				Escribir "No es un triángulo"
			FinSi
			
			//Si es triangulo rectangulo
			si (a^2 + b^2 = c^2) Entonces
				Escribir "Si es tringulo rectangulo"
			sino 
				Escribir "No es triangulo rectangulo"
			FinSi
			
			//Si es triangulo rectangulo, calcular el area
			Si (a^2 + b^2 = c^2) Entonces
				area=(b*a)/2
				Escribir "El area es: ",area
			SiNo 
				Escribir "No es triangulo rectangulo"
			FinSi
			
		"media": //MEDIA CON DOS NUMEROS
			Definir a, b, media Como Real
			
			Escribir "Dime un n°"
			Leer a
			Escribir "Dime otro n°"
			Leer b
			
			Si (a>=0) Y (b>=0) Entonces
				media<-((a+b)/2) //formula de la media
				Escribir "La media es: ", media
			Sino
				Escribir "Error. El valor dado es negativo"
			FinSi
			
		De Otro Modo:
			Escribir "Ya no hay mas opciones" //ya no hay mas opciones pedidas en el ejercicio
	FinSegun
	
FinAlgoritmo
