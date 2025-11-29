Algoritmo ParesNones
	Definir eleccion Como Caracter //definimos la eleccion del jugador como palabra
	Definir jugador1, jugadorIA, suma Como Entero //definimos la variables usadas en el bucle como numeros
	
	Escribir "¿Eliges pares o nones?" //te pregunta la IA para comenzar el juego PARES o NONES
	
	Repetir //1º bucle
		Leer eleccion //segun la eleccion que hagas, lee la primera letra para identificar cual opcion has elegido
		eleccion <- Minusculas(eleccion) //pilla toda palabra
		
		Si (eleccion<>"pares") Y (eleccion<>"nones") Entonces //si la palabra no es pares o nones, no pasa y debes volver a escribirlo
			Escribir "Hubo un error. Escribe pares o nones."
		FinSi
	Hasta Que (eleccion="pares") O (eleccion="nones") //si pilla que escribiste pares o nones, sigue para el siguiente bucle
	
	
	Repetir //2ºbucle
		Escribir "Escribe un numero del 0 al 5" //porque son los dedos de una mano 
		Leer jugador1 //lee el numero que el jugador 1 ha puesto
		
		Si (jugador1 >= 0) Y (jugador1 <= 5) Entonces //si el nº esta entre 0 y 5, sigue para delante
			// número válido ? seguimos
			Escribir "Elegiste el nº: ", jugador1 //si es valido, se escribe y pasamos al siguiente bucle
		SiNo
			Escribir "Error, vuelve a escribir un nº del 0 al 5" //sino, da error
		FinSi
	Hasta Que (jugador1>=0) Y (jugador1<=5)
	
	
	jugadorIA <- Aleatorio(0,5) //el jugador 2 sera la IA, que elige un numero entre 0 y 5 aleatoriamente
	Escribir "La IA eligió: ", jugadorIA //escribe lo que ha elegido la IA
	
	suma <- jugador1 + jugadorIA //funcion suma: nº del jugador1 y nº del jugadorIA
	Escribir "La suma de ambas elecciones da: ", suma
	
	Si (suma%2=0) Entonces //si la suma entre 2 da resto 0, entonces es par
		Escribir "El resultado es par"
		
		Si eleccion = "pares" Entonces //si al principio el jugado1 eligio par, gana, sino, gana la IA
			Escribir "¡GANÓ EL JUGADOR 1!"
		Sino
			Escribir "¡GANÓ LA IA!"
		FinSi
		
	Sino //sino es diferente de 0, es impar
		Escribir "El resultado es none"
		
		Si eleccion = "nones" Entonces //si al principio el jugado1 eligio impar, gana, sino, gana la IA
			Escribir "¡GANÓ EL JUGADOR 1!"
		Sino
			Escribir "¡GANÓ LA IA!"
		FinSi
		
	FinSi
	
FinAlgoritmo