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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a mi app',
              style: TextStyle(
                  color: Color.fromARGB(255, 22, 70, 110), 
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Dancing'
                  ),
            ),
            const Text('Instructor Daniel Benavides'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Texto 1'),
                Text('Texto 1')
              ],
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.grey,
              child: Text('Aaaaaa'),
            ),
            SizedBox(height: 20,),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: Text('bbbb'),
            ),
          ],
        ),
      ),
    );
  }
}
