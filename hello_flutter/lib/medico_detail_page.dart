import 'package:flutter/material.dart';
import 'package:hello_flutter/medicos_list.dart';

import 'appbar_nav.dart';

class MedicoDetail extends StatelessWidget {
  final dynamic medico;
  const MedicoDetail({super.key, required this.medico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarNav(titulo: "${medico['nombre']} ${medico['apellido']}"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1610195765030-6c37d51b15b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              height: 200,
              width: double.infinity,
              color: const Color.fromARGB(85, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(medico['imagen']),
                ),
                Text("${medico['nombre']} ${medico['apellido']}", style: const TextStyle(color: Colors.white, fontSize: 22),),
                Text("${medico['especialidad']}", style: const TextStyle(color: Colors.white, fontSize: 18),),                
              ]),
            ),
          ),

          ListTile(
            title: Text("Información personal"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,              
              children: [
                Text('Correo: ${medico['correo']}'),
                Text('Teléfono: ${medico['telefono']}'),
                medico['estado'] ? Text('Activo', style: TextStyle(color: Colors.green)) : Text('Inactivo', style: TextStyle(color: Colors.red) ,)
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text('Entidades Aliadas'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(var entidad in medico['entidades']) Text(entidad)
              ],
            ),)
          
        ],),
      ),
    );
  }
}
