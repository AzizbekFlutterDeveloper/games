import 'package:flutter/material.dart';
import 'model/data.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Data> lst = List.generate(9, (index) => Data(Uri.parse(''), 0));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Container(
              height: size.height * 0.2,
              width: size.width * 1,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Center(
                  child: Text(
                '$win',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
            ),
          ),
          Container(
              height: size.width * 1.05,
              width: size.width * 1,
              color: Colors.transparent,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (_, __) {
                    return InkWell(
                        child: Container(
                          height: size.width * 0.10,
                          width: size.width * 0.10,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                            color: Colors.green,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage("${lst[__].image}"),
                            ),
                          ),
                          margin: const EdgeInsets.all(10),
                        ),
                        onTap: win == "Tic Tac Toe"
                            ? () {
                                if (containers[__] != 1 &&
                                    containers[__] != 2) {
                                  containers[__] = navbati.isEven ? 1 : 2;
                                  lst[__].son = navbati.isEven ? 1 : 2;
                                  navbati++;
                                  tekshirish(__);
                                  returnImage(__);
                                  setState(() {});
                                }
                              }
                            : null);
                  },
                  itemCount: 9)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: InkWell(
              child: Container(
                height: size.width * 0.120,
                width: size.width * 0.6,
                child: const Center(
                  child: Text(
                    "RESET",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3),
                ),
              ),
              onTap: () {
                reset();
              },
            ),
          ),
        ],
      ),
    );
  }

  reset() {
    containers.clear();
    containers.addAll([0, 0, 0, 0, 0, 0, 0, 0, 0]);
    for (var i = 0; i < containers.length; i++) {
      lst[i].image = Uri.parse("");
    }
    win = "Tic Tac Toe";
    setState(() {});
  }

  tekshirish(i) {
    if (containers[0] == 1 && containers[1] == 1 && containers[2] == 1) {
      win = "X Won";
    } else if (containers[3] == 1 && containers[4] == 1 && containers[5] == 1) {
      win = "X Won";
    } else if (containers[6] == 1 && containers[7] == 1 && containers[8] == 1) {
      win = "X Won";
    } else if (containers[0] == 1 && containers[3] == 1 && containers[6] == 1) {
      win = "X Won";
    } else if (containers[1] == 1 && containers[4] == 1 && containers[7] == 1) {
      win = "X Won";
    } else if (containers[2] == 1 && containers[5] == 1 && containers[8] == 1) {
      win = "X Won";
    } else if (containers[0] == 1 && containers[4] == 1 && containers[8] == 1) {
      win = "X Won";
    } else if (containers[2] == 1 && containers[4] == 1 && containers[6] == 1) {
      win = "X Won";
    }
    if (containers[0] == 2 && containers[1] == 2 && containers[2] == 2) {
      win = "0 Won";
    } else if (containers[3] == 2 && containers[4] == 2 && containers[5] == 2) {
      win = "0 Won";
    } else if (containers[6] == 2 && containers[7] == 2 && containers[8] == 2) {
      win = "0 Won";
    } else if (containers[0] == 2 && containers[3] == 2 && containers[6] == 2) {
      win = "0 Won";
    } else if (containers[1] == 2 && containers[4] == 2 && containers[7] == 2) {
      win = "0 Won";
    } else if (containers[2] == 2 && containers[5] == 2 && containers[8] == 2) {
      win = "0 Won";
    } else if (containers[0] == 2 && containers[4] == 2 && containers[8] == 2) {
      win = "0 Won";
    } else if (containers[2] == 2 && containers[4] == 2 && containers[6] == 2) {
      win = "0 Won";
    }
    for (var i in containers) {
      if (containers[0] != 0 &&
          containers[1] != 0 &&
          containers[2] != 0 &&
          containers[3] != 0 &&
          containers[4] != 0 &&
          containers[5] != 0 &&
          containers[6] != 0 &&
          containers[7] != 0 &&
          containers[8] != 0) {
        win = "Do'stlik g'alaba qozondi!";
      }
    }
  }

  returnImage(i) {
    if (lst[i].son == 1) {
      return lst[i].image = Uri.parse('assets/image/xxx.png');
    } else if (lst[i].son == 2) {
      return lst[i].image = Uri.parse('assets/image/nol.png');
    } else {
      return lst[i].image = Uri.parse('');
    }
  }
}
