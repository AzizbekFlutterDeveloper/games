import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(MyTic());
}

class MyTic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      title: "Tic Tac Toe",
      home: MyHome(),
    );
  }
}
