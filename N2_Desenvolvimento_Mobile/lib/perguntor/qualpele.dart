import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/tembarba.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/tipocorpo.dart';
import 'package:n2_desenvolvimento_mobile/resultor.dart';

class QualPele extends StatefulWidget{
  const QualPele({Key? key}) : super(key: key);

  @override
  State<QualPele> createState() => QualPeleInstance();
}

class QualPeleInstance extends State<QualPele> {
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
                    "QUAL A PELE?",
                    style: TextStyle(fontSize: 40)),
              ),

              //BOTÃO DE RESPOSTA 1
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      pele = pele_Male;
                    }else{
                      pele = pele_Fem;
                    }
                    ProximaPergunta(context);
                  },

                  child: Padding(padding: EdgeInsets.all(20),child:Text("VERMELHA",style: TextStyle(fontSize: 30),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 2
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      pele = blank;
                    }else{
                      pele = blank;
                    }
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("AZUL",style: TextStyle(fontSize: 30),),)
              ),
              ),

              //BOTÃO DE RESPOSTA 3
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      pele = blank;
                    }else{
                      pele = blank;
                    }
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("MACACO",style: TextStyle(fontSize: 30),),)
              ),
              ),

            ] //children
        ),
      ),
    );
  }

}

void ProximaPergunta (context){

  Navigator.push(context, MaterialPageRoute(builder: (context) => TemBarba()));

}

