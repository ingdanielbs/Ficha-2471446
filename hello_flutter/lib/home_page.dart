import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi aplicación'),
        actions: const [
          Icon(Icons.account_box),
          Icon(Icons.notifications),
        ],
      ),
      drawer: Drawer(),
    );
  }
}