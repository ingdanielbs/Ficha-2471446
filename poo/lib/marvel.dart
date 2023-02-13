import 'dart:io';

import 'package:poo/heroe.dart';

class Marvel {
  late String nombre;
  late int salario;

  static var reclutados = [];

  Marvel(this.nombre, this.salario);

  static reclutarHeroe(){
    var h = Heroe.buscador();
    if (h != null) {
      print("Ingrese el salario");
      int salario = int.parse(stdin.readLineSync()!);
      reclutados.add(Marvel(h.nombre, salario));
      print("Heroe reclutado  \n");
    } else {
      print("Heroe no encontrado \n");
    }
  }

}