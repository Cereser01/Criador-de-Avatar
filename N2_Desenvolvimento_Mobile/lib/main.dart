import 'package:flutter/material.dart';
import 'seletor.dart';
import 'resultor.dart';

const color1 = Colors.grey;
const color2 = Colors.black;
const color3 = Colors.white;

var corpo;
var barba;
var oculos;
var fundo;
var brinco;
var roupa;
var pele;

const blank = DecorationImage(image: AssetImage("avatar_blank.png"));

const fundo_dorgas = DecorationImage(image: AssetImage("fundo_dorgas.png"));
const fundo_gramado = DecorationImage(image: AssetImage("fundo_gramado.png"));
const fundo_espaco = DecorationImage(image: AssetImage("fundo_espaco.png"));
const fundo_cidade = DecorationImage(image: AssetImage("fundo_cidade.png"));

const body_Male = DecorationImage(image: AssetImage("avatar_male.png"));
const body_Fem = DecorationImage(image: AssetImage("avatar_female.png"));

const barba_Male = DecorationImage(image: AssetImage("avatar_male_barba.png"));
const barba_Fem = DecorationImage(image: AssetImage("avatar_female_barba.png"));

const oculos_Male = DecorationImage(image: AssetImage("avatar_male_oculos.png"));
const oculos_Fem = DecorationImage(image: AssetImage("avatar_female_oculos.png"));

const brinco_Fem = DecorationImage(image: AssetImage("brinco_female.png"));
const brinco_Male = DecorationImage(image: AssetImage("brinco_male.png"));

const vestido_Fem = DecorationImage(image: AssetImage("vestido_rosa_female.png"));
const vestido_Male = DecorationImage(image: AssetImage("vestido_rosa_male.png"));

const macacao_Fem = DecorationImage(image: AssetImage("macacao_female.png"));
const macacao_Male = DecorationImage(image: AssetImage("macacao_male.png"));

const camiseta_Fem = DecorationImage(image: AssetImage("camiseta_preta_female.png"));
const camiseta_Male = DecorationImage(image: AssetImage("camiseta_preta_male.png"));

var pele_Fem = DecorationImage(image: AssetImage("pele_female.png"));
var pele_Male = DecorationImage(image: AssetImage("pele_male.png"));

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
