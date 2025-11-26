// Definición de la clase
class Animal {
  constructor(nombre, tipo, edad) {
    this.nombre = nombre;
    this.tipo = tipo;
    this.edad = edad;
  }


  comer() {
    console.log(`${this.nombre} está comiendo.`);
  }


  dormir() {
    console.log(`${this.nombre} está durmiendo.`);
  }
}


// Creación de objetos
let tigre = new Animal("Raja", "Tigre", 5);
let mono = new Animal("Chico", "Mono", 3);
let jirafa = new Animal("Luna", "Jirafa", 7);


// Uso de métodos
tigre.comer();
mono.dormir();
jirafa.comer();
