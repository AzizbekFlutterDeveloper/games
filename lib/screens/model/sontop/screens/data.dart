import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:math';

int urinish = 3;
int son = 0;
int Rson = Random().nextInt(11) + 1;

textYubor() {
  if (son == 0) {
    return const Center(
      child: Text(
        "Sonni toping🧐!",
        style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
      ),
    );
  } else if (Rson == son) {
    return "Topdiz🥳";
  } else if (urinish == 0) {
    return "  Urinish tugadi!\nBir aylanib keling🌚!";
  } else if (Rson < son) {
    return "Biroz ayring🤨!";
  } else if (Rson > son) {
    return "Biroz Qo'shing😁!";
  } else {
    return "";
  }
}

random() {
  Rson = Random().nextInt(11) + 1;
}



// else if (son != Rson) {
//     return const Center(
//       child: Text(
//         "Qayta urining😇",
//         style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
//       ),
//     );
//   }