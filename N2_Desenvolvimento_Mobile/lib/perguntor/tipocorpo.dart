import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/resultor.dart';
import 'usaoculos.dart';

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
                "QUAL É SEU TIPO CORPORAL?",
                style: TextStyle(fontSize: 40)),
          ),

          Padding( padding: EdgeInsets.only(top: 20), child:
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
              onPressed: (){
                corpo = body_Male;
                Navigator.push(context, MaterialPageRoute(builder: (context) => UsaOculos()));
                },
              child: Padding(padding: EdgeInsets.all(20),child:Text("Masculino",style: TextStyle(fontSize: 30),),)
          ),
          ),

          Padding( padding: EdgeInsets.only(top: 20), child:
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
              onPressed: (){
                corpo = body_Fem;
                Navigator.push(context, MaterialPageRoute(builder: (context) => UsaOculos()));
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
