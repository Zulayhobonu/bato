import 'package:flutter/material.dart';

class Ikki extends StatefulWidget {
  const Ikki({super.key});

  @override
  State<Ikki> createState() => _IkkiState();
}

class _IkkiState extends State<Ikki> {
  bool z = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Animatsiya",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 179, 214, 242),
        child: AnimatedAlign(
          alignment: z ? Alignment.topRight : Alignment.bottomLeft,
          duration: const Duration(seconds: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                z = false; 
              });

             
              Future.delayed(const Duration(seconds: 5), () {
                if (mounted) {
                  setState(() {
                    z = true;
                  });
                }
              });
            },
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWKvKxVPzzlVYrLDYT9ebGGgLN77Dy3d-mQa_FvdzoiNj4sDM1mFDcAT_tXl-lzOj344&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
