import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/qualfundo.dart';
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
        leading: Image.asset("logo.png"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [

            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
              child: const Text(
                  "Bem-vindo ao Criador de Avatar!\n\nResponda as perguntas para criarmos seu avatar perfeito!",
                  style: TextStyle(
                      color: color2,
                      fontSize: 20
                  )
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                child: const Padding(padding: EdgeInsets.all(15), child: Text(
                  "Começar",
                  style: TextStyle(fontSize: 30),),),
                onPressed: () {
                  ProximaPergunta(context);
                },
              ),
            )

          ], // children
        ),
      ),
    );
  }


}

void ProximaPergunta (context){

  Navigator.of(context).push(
    MaterialPageRoute(
      settings: RouteSettings(name: "/Fundo"),
      builder: (context) => QualFundo(),
    ),
  );

}
