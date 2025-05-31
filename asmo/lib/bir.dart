import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: bir()));
}

class bir extends StatefulWidget {
  const bir({super.key});

  @override
  State<bir> createState() => _birState();
}

class _birState extends State<bir> {
  int a = 0;

  void add() {
    setState(() {
      if (a < 33) {
        a++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 200),
            child: Text(
              "$a",
              style: TextStyle(fontSize: 100, color: Colors.black),
            ),
          ),

          SizedBox(height: 30),
         Padding(
           padding: const EdgeInsets.only(right: 350),
           child: Text("33"),
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              InkWell(onTap: () {
                setState(() {
              a=0;
                });
              },
                child: Container(
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 93, 2, 131),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 179, 214, 242),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(onTap: () {
                  add();
                },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 179, 214, 242),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                      ),
                    ),
                  
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
