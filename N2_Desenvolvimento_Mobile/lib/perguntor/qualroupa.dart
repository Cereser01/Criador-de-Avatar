import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/resultor.dart';

class QualRoupa extends StatefulWidget{
  const QualRoupa({Key? key}) : super(key: key);

  @override
  State<QualRoupa> createState() => QualRoupaInstance();
}

class QualRoupaInstance extends State<QualRoupa> {
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
                    "Qual sua roupa preferida?",
                    style: TextStyle(fontSize: 40)),
              ),

              //BOTÃO DE RESPOSTA 1
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      roupa = camiseta_Male;
                    }else{
                      roupa = camiseta_Fem;
                    }
                    ProximaPergunta(context);
                  },

                  child: Padding(padding: EdgeInsets.all(20),child:Text("Camiseta",style: TextStyle(fontSize: 30),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 2
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      roupa = vestido_Male;
                    }else{
                      roupa = vestido_Fem;
                    }
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Vestido",style: TextStyle(fontSize: 30),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 3
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      roupa = macacao_Male;
                    }else{
                      roupa = macacao_Fem;
                    }
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Macacão",style: TextStyle(fontSize: 30),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 4
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      roupa = blank;
                    }else{
                      roupa = blank;
                    }
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Eu sou nudista",style: TextStyle(fontSize: 30),),)
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
      settings: RouteSettings(name: "/Resultor"),
      builder: (context) => Resultor(),
    ),
  );

}

