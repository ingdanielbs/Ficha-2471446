import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/appbar_nav.dart';
import 'package:hello_flutter/medicos_page.dart';

import 'image_slider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(50),
        child: AppbarNav(titulo: 'Medical Help'),),
        drawer: Drawer(),
        /* floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),), */
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MedicosPage()));
                          },
                          icon: const Icon(
                            Icons.supervisor_account,
                            size: 50,
                            color: Color.fromARGB(255, 198, 43, 77),
                          ),
                        ),
                      ),
                      const Text(
                        'Doctor',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.accessibility,
                            size: 50,
                            color: Color.fromARGB(255, 125, 185, 234),
                          ),
                        ),
                      ),
                      const Text(
                        'Paciente',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.local_hospital,
                            size: 50,
                            color: Color.fromARGB(255, 224, 106, 206),
                          ),
                        ),
                      ),
                      const Text(
                        'Farmacia',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.view_comfy_alt,
                            size: 50,
                            color: Color.fromARGB(255, 140, 173, 69),
                          ),
                        ),
                      ),
                      const Text('Hospital', style: TextStyle(fontSize: 18))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 198, 43, 77),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '¿Quieres pagar más rápido?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 125, 185, 234)),
                        ),
                        Text('Agrega una tarjeta de crédito'),
                      ],
                    ),
                    const Icon(Icons.add_card)
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Servicios',
                style: TextStyle(
                    color: Color.fromARGB(255, 198, 43, 77),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: const Duration(seconds: 2)),
                items: imageSliders,
              ),
            ],
          ),
        ));
  }
}


/* Center(
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
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)),
              width: 150,
              height: 150,              
              child: Column(
                children: [
                  Text('Aaaaaa'),
                  Text('Bbbbbb'),
                  Text('cccccc'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: Text('bbbb'),
            ),
            SizedBox(height: 10,),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amber,
                  style: BorderStyle.solid,
                )),
            )
          ],
        ),
      ), */