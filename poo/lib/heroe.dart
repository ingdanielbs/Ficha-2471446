import 'dart:io';

class Heroe {
  late String nombre;
  late String poder;

  static List<Heroe> heroes = [];

  Heroe(this.nombre, this.poder);

  static agregarHeroe() {
    print("Escribe el nombre del heroe");
    String nombre = stdin.readLineSync()!;
    print("Escribe el poder del heroe");
    String poder = stdin.readLineSync()!;
    heroes.add(Heroe(nombre, poder));
    print("Heroe agregado exitosamente \n");
  }

  static listarHeroes() {
    if (heroes.isEmpty) {
      print("No hay heroes registrados");
    } else {
      for (var h in heroes) {
        print("${h.nombre} - ${h.poder}");
      }
    }
  }

  static Heroe? buscador(){
    print("Ingresa el nombre del heroe");
    String nombre = stdin.readLineSync()!;
    for (var h in heroes) {
      if (h.nombre == nombre) {
       return h; 
      }
    }
    return null;
  }

  static editarHeroe(){
    var h = buscador();
    if (h != null) {
      print("Qué deseas editar? 1. Nombre 2. Poder");
      int opcion = int.parse(stdin.readLineSync()!);
      if (opcion == 1) {
        print("Ingresa el nuevo nombre");
        String nombre = stdin.readLineSync()!;
        h.nombre = nombre;
      } else if(opcion == 2){
        print("Ingresa el nuevo poder");
        String poder = stdin.readLineSync()!;
        h.poder = poder;
      }else{
        print("Opción no válida");
      }
    } else {
      print("No se encuentra el heroe");
    }
  }

  static eliminarHeroe(){
    var h = buscador();
    if (h != null) {
      heroes.removeAt(heroes.indexOf(h));
      print("Eliminado correctamente \n");
    } else {
      print("No se encuentra el heroe");
    }
  }


}
