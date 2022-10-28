import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/seletor.dart';
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
        title: const Text("Esse é o seu avatar!"),
        leading: Image.asset("logo.png"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
          Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            //FUNDO
              image: fundo
          ),
          child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                //TIPO DE CORPO
                image: corpo
              ),
              child: Container(
                decoration: BoxDecoration(
                  //PELE
                  image: pele
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
                    child: Container(
                      decoration: BoxDecoration(
                        //BRINCO
                          image: brinco
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          //ROUPA
                            image: roupa
                        ),
                        child: Image.asset("avatar_blank.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

            Container(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                child: const Padding(padding: EdgeInsets.all(15), child: Text(
                  "Criar um novo",
                  style: TextStyle(fontSize: 30),),),
                onPressed: () {
                  Navigator.of(context).popUntil(ModalRoute.withName("/Fundo"));
                  Navigator.pop(context);
                },
              ),
            )



          ], // children
        ),
      ),
    );
  }
}