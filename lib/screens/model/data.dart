import 'package:flutter/material.dart';
import 'package:games/screens/tictac/lib/main.dart';
import '/screens/oyinlar/tic_tac_toe.dart';
import 'package:games/screens/oyinlar/toshQaychiQogoz.dart';
import '/screens/model/moshina/home.dart';
import '/screens/model/sontop/home.dart';

List<Data> LST = List.generate(5, (i) => Data(i));
List gamename = ["Tic Tac Toe","Tic Tac Toe","Don Don Ziki", "Arqon tortish!","Sonni top!" ];
List rasmlar = [
  "assets/image/birgame.png",
  "assets/image/ikkigame.png",
  "assets/image/uchgame.png",
  "assets/image/tortgame.png",
  "assets/image/beshgame.gif",
];

class Data extends Object {
  String image = "";
  int index = 0;

  Data(this.index);
}

ticAvaz(context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyTic(),
      ));
}

ticAziz(context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TicTacToe(),
      ));
}

toshQaychi(context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TshQaychi(),
      ));
}

moshina(context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Car(),
      ));
}

SonTop(context) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Sonn(),
      ));
}
