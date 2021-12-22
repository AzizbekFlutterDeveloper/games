import 'package:flutter/material.dart';
import 'model/data.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * b,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.grey.shade700,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RotatedBox(
                              quarterTurns: 0,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/image/mashinakok.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image/arqon.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * a,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.grey.shade700,
                        child: Column(
                          children: [
                            RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image/arqon.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 6,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/image/mashinaqizil.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              child: Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.blue,
                        child: Container(
                          color: Colors.transparent,
                        ),
                        onTap: (b == 0.25000000000000006)
                            ? null
                            : () {
                                a += 0.05;
                                b -= 0.05;
                                korsat();
                                setState(() {});
                              },
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.red,
                        child: Container(
                          color: Colors.transparent,
                        ),
                        onTap: (a == 0.25000000000000006)
                            ? null
                            : () {
                                b += 0.05;
                                a -= 0.05;
                                print("$b\n$a");
                                korsat();

                                setState(() {});
                              },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  mydialog(context, Color rang) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: rang,
                  image: const DecorationImage(
                    image: AssetImage("assets/image/over.gif"),
                  ),
                ),
              ),
              actions: [
                ButtonBar(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          a = 0.5;
                          b = 0.5;
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text("ok"))
                  ],
                ),
              ],
            ),
        barrierDismissible: false);
  }

  korsat() {
    if (a == 0.25000000000000006) {
      rang = Colors.blue;
      return mydialog(context, rang);
    } else if (b == 0.25000000000000006) {
      rang = Colors.red;
      return mydialog(context, rang);
    }
  }
}
