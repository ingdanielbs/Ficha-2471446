import 'dart:io';

import 'package:poo/heroe.dart';
import 'package:poo/marvel.dart';

void main(List<String> args) {
  int opcion = 0;
  do {
    print(
        "Elige \n1. Agregar un heroe \n2. Listar herores \n3. Editar heroe \n4. Eliminar heroe \n5. Reclutar Heroe \n6. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        Heroe.agregarHeroe();
        break;
      case 2:
        Heroe.listarHeroes();
        break;
      case 3:
        Heroe.editarHeroe();
        break;
      case 4:
        Heroe.eliminarHeroe();
        break;
      case 5:
        Marvel.reclutarHeroe();
        break;
      case 6:
        print("Andá pashá");
        break;  
      default:
        print("Opción no válida");
    }
  } while (opcion != 6);
}
