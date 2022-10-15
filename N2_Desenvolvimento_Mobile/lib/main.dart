import 'package:flutter/material.dart';
import 'seletor.dart';
import 'resultor.dart';

const color1 = Colors.grey;
const color2 = Colors.black;
const color3 = Colors.white;

var corpo;
var barba;
var oculos;

const blank = DecorationImage(image: AssetImage("avatar_blank.png"));
const body_Male = DecorationImage(image: AssetImage("avatar_male.png"));
const body_Fem = DecorationImage(image: AssetImage("avatar_female.png"));
const barba_Male = DecorationImage(image: AssetImage("avatar_male_barba.png"));
const barba_Fem = DecorationImage(image: AssetImage("avatar_female_barba.png"));
const oculos_Male = DecorationImage(image: AssetImage("avatar_male_oculos.png"));
const oculos_Fem = DecorationImage(image: AssetImage("avatar_female_oculos.png"));

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
