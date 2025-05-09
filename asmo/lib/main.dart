import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: asos(),));
}

class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(width: double.infinity,height: 400,color: Colors.red,),);
  }
}