import 'package:flutter/material.dart';
import 'seletor.dart';

const color1 = Colors.grey;
const color2 = Colors.black;
const color3 = Colors.white;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "App criador de Avatar",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: Seletor(),
  )
  ); //runApp
}
