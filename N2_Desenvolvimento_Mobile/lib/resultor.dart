import 'package:flutter/material.dart';
import 'main.dart';

class Resultor extends StatefulWidget{
  const Resultor({Key? key}) : super(key: key);

  @override
  State<Resultor> createState() => ResultorInstance();
}

class ResultorInstance extends State<Resultor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color2,
        title: const Text("Esse é você!"),
        leading: const Text("Inserir logo aqui."),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [

          ], // children
        ),
      ),
    );
  }
}