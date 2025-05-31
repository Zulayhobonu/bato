import 'package:asmo/bir.dart';
import 'package:asmo/ikki.dart';
import 'package:asmo/uch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: asos()));
}

class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  int tanla = 0;
  void funksiya(qayt) {
    setState(() {
         tanla = qayt; 
    });

  }

  List nom = [bir(), Ikki(), uch()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nom.elementAt(tanla),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        currentIndex: tanla,
        backgroundColor:    const Color.fromARGB(255, 179, 214, 242),
        onTap: (value) {
          funksiya(value);
        },
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: "school")
        ],
      ),
    );
  }
}
