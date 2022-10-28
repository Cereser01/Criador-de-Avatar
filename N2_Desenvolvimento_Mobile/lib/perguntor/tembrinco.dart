import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';
import 'package:n2_desenvolvimento_mobile/perguntor/qualroupa.dart';
import 'package:n2_desenvolvimento_mobile/resultor.dart';

class TemBrinco extends StatefulWidget{
  const TemBrinco({Key? key}) : super(key: key);

  @override
  State<TemBrinco> createState() => TemBrincoInstance();
}

class TemBrincoInstance extends State<TemBrinco> {
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
                    "VOCÊ TEM BRINCO?",
                    style: TextStyle(fontSize: 40)),
              ),

              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    if(corpo == body_Male){
                      brinco = brinco_Male;
                    }else{
                      brinco = brinco_Fem;
                    }
                    ProximaPergunta(context);
                  },

                  child: Padding(padding: EdgeInsets.all(20),child:Text("Sim",style: TextStyle(fontSize: 30),),)
              ),
              ),

              Padding( padding: EdgeInsets.only(top: 20), child:
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color2)),
                  onPressed: (){
                    brinco = blank;
                    ProximaPergunta(context);
                  },
                  child: Padding(padding: EdgeInsets.all(20),child:Text("Não",style: TextStyle(fontSize: 30),),)
              ),
              ),

            ] //children
        ),
      ),
    );
  }

}

void ProximaPergunta (context){

  Navigator.push(context, MaterialPageRoute(builder: (context) => QualRoupa()));

}


