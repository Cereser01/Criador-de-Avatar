import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/tipocorpo.dart';
import 'package:n2_desenvolvimento_mobile/resultor.dart';

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
                    "QUAL O FUNDO?",
                    style: TextStyle(fontSize: 40)),
              ),

              //BOTÃO DE RESPOSTA 1
              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    fundo = fundo_dorgas;
                    ProximaPergunta(context);
                  },

                  child: Padding(padding: EdgeInsets.all(20),child:Text("Dorgas",style: TextStyle(fontSize: 30),),)
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
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Gramado",style: TextStyle(fontSize: 30),),)
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
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Cidade",style: TextStyle(fontSize: 30),),)
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
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Espaço",style: TextStyle(fontSize: 30),),)
              ),
              ),



            ] //children
        ),
      ),
    );
  }

}

void ProximaPergunta (context){

  Navigator.push(context, MaterialPageRoute(builder: (context) => TipoCorpo()));

}

