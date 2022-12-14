import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/qualpele.dart';

class TipoCorpo extends StatefulWidget{
  const TipoCorpo({Key? key}) : super(key: key);

  @override
  State<TipoCorpo> createState() => TipoCorpoInstance();
}

class TipoCorpoInstance extends State<TipoCorpo> {
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
                "Qual é seu tipo corporal?",
                style: TextStyle(fontSize: 40)),
          ),

          Padding( padding: EdgeInsets.only(top: 20), child:
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
              onPressed: (){
                corpo = body_Male;
                ProximaPergunta(context);
                },
              child: Padding(padding: EdgeInsets.all(20),child:Text("Masculino",style: TextStyle(fontSize: 30),),)
          ),
          ),

          Padding( padding: EdgeInsets.only(top: 20), child:
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
              onPressed: (){
                corpo = body_Fem;
                ProximaPergunta(context);
              },
              child: Padding(padding: EdgeInsets.all(20),child:Text("Feminino",style: TextStyle(fontSize: 30),),)
          ),
          ),
        ],
        )
    ),
    );
  }

}


void ProximaPergunta (context){

  Navigator.of(context).push(
    MaterialPageRoute(
      settings: RouteSettings(name: "/Pele"),
      builder: (context) => QualPele(),
    ),
  );

}
