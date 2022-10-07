import 'package:flutter/material.dart';
import 'package:n2_desenvolvimento_mobile/main.dart';

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

            Container(
              padding: const EdgeInsets.all(10),
              child: const Text("QUAL É SEU TIPO CORPORAL?"),
            ),

            /*Container(
            child: ,
            )*/

        ] //children
      ),
    ),
    );
  }
}
