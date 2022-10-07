import 'package:flutter/material.dart';
import 'main.dart';

class Seletor extends StatefulWidget{
  const Seletor({Key? key}) : super(key: key);

  @override
  State<Seletor> createState() => SeletorInstance();
}

class SeletorInstance extends State<Seletor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color2,
        title: const Text("Crie seu avatar!"),
        leading: const Text("Inserir logo aqui."),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [

            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text("Responda as perguntas para criarmos seu avatar perfeito!",style: TextStyle(fontSize: 20)),
            ),

          ], // children
        ),
      ),
    );
  }


}