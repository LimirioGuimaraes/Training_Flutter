import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(97, 70, 70, 70),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("I'm Just Training"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.amberAccent,
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 70, 70, 70),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          setState(() {
            count++;
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
                Navigator.of(context).pop(true); 
              });
                        return AlertDialog(
                backgroundColor: const Color.fromARGB(255, 70, 70, 70),
                content: Text(
                  'You pressed the button $count times 🤯',
                  textAlign: TextAlign.center,
                  ),
                contentTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
