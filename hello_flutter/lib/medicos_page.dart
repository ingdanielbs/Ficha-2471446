import 'package:flutter/material.dart';
import 'package:hello_flutter/medicos_list.dart';

import 'appbar_nav.dart';

class MedicosPage extends StatelessWidget {
  const MedicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(50),
        child: AppbarNav(titulo: 'Medical Help'),),
      body: ListView.separated(
        itemCount: medicos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(medicos[index]['imagen']),
                ),
                Text('${medicos[index]['nombre']} ${medicos[index]['apellido']}'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
              ],
            ),
          );
        },
      ),
    );
  }
}


/* IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ), */