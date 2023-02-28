import 'package:flutter/material.dart';

class AppbarNav extends StatelessWidget {
  final String titulo;
  const AppbarNav({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: Text(titulo),
          actions: const [
            Icon(Icons.account_box),
            Icon(Icons.notifications),
          ],
          backgroundColor: const Color.fromARGB(255, 198, 43, 77),
        );
  }
}