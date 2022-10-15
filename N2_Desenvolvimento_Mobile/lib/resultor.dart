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
        leading: Image.asset("logo.png"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [

            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                //TIPO DE CORPO
                image: corpo
              ),
              child: Container(
                decoration: BoxDecoration(
                  //BARBA
                  image: barba
                ),
                child: Container(
                  decoration: BoxDecoration(
                    //OCULOS
                    image: oculos
                  ),
                  child: Image.asset("avatar_blank.png"),
                ),
              ),
            ),



          ], // children
        ),
      ),
    );
  }
}