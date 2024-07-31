import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//locate

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(97, 70, 70, 70),
        appBar: AppBar(
          centerTitle: true,
          title: const Text ("I'm Just Training"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.amberAccent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shuffle),
              label: 'Suffle',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.cruelty_free_rounded), label: 'rabbit?'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Test',
            ),
          ],
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          selectedItemColor: Colors.amberAccent,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 30,
        ),
        body: Center(
          child: Container(
            child: const Text(
              'É só uma tela inicial\n🤠',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 35,
                ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
