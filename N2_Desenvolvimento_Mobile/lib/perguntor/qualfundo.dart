import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/tipocorpo.dart';

class QualFundo extends StatefulWidget{
  const QualFundo({Key? key}) : super(key: key);

  @override
  State<QualFundo> createState() => QualFundoInstance();
}

class QualFundoInstance extends State<QualFundo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color2,
        title: const Text("Crie seu avatar!"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
            children: [

              //TEXTO DA PERGUNTA
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                child: const Text(
                    "Em qual ambiente você se sentiria mais confortável?",
                    style: TextStyle(fontSize: 30)),
              ),

              //BOTÃO DE RESPOSTA 1
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    fundo = fundo_dorgas;
                    ProximaPergunta(context);
                  },

                  child: Padding(padding: EdgeInsets.all(20),child:Text("Uma lata de tinta",style: TextStyle(fontSize: 20),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 2
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    fundo = fundo_gramado;
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Um gramado pacífico",style: TextStyle(fontSize: 20),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 3
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    fundo = fundo_cidade;
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("O centro de uma cidade",style: TextStyle(fontSize: 20),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 4
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    fundo = fundo_espaco;
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("A órbita da lua",style: TextStyle(fontSize: 20),),)
              ),
              ),



            ] //children
        ),
      ),
    );
  }

}

void ProximaPergunta (context){

  Navigator.of(context).push(
    MaterialPageRoute(
      settings: RouteSettings(name: "/Corpo"),
      builder: (context) => TipoCorpo(),
    ),
  );

}

