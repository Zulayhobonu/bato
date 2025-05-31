import 'package:flutter/material.dart';

class uch extends StatefulWidget {
  const uch({super.key});

  @override
  State<uch> createState() => _uchState();
}

class _uchState extends State<uch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "raqamlar",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 197, 228),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 1000,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,top: 20),
                child: Text(
                  "Tag ${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,fontSize: 20
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 173, 173, 173),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              width: 200,
              height: 100,
            ),
          );
        },
      ),
    );
  }
}
