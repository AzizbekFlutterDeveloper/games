import 'package:flutter/material.dart';
import 'screens/data.dart';

class Sonn extends StatefulWidget {
  const Sonn({Key? key}) : super(key: key);

  @override
  _SonnState createState() => _SonnState();
}

class _SonnState extends State<Sonn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Sonni top!',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/back.png'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Container(
                              child: urinish != 3
                                  ? Center(
                                      child: Text(
                                      "${textYubor()}",
                                      style: const TextStyle(
                                          fontSize: 33,
                                          fontWeight: FontWeight.bold),
                                    ))
                                  : const Center(
                                      child: Text(
                                        "Sonni toping😇!",
                                        style: TextStyle(
                                            fontSize: 33,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                              height: size.height * 0.3,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade400,
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(150),
                                      bottomLeft: Radius.circular(150))),
                            ),
                          ),
                        ),
                        Positioned(
                            left: size.width * 0.78,
                            top: size.height * 0.040,
                            child: Container(
                              height: size.width * 0.20,
                              width: size.width * 0.20,
                              child: Center(
                                  child: Text("$urinish",
                                      style: const TextStyle(
                                          fontSize: 33,
                                          fontWeight: FontWeight.bold))),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3)),
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5),
                        itemBuilder: (_, __) {
                          return InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.blue,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 2),
                              child: Center(
                                child: Text(
                                  '${__ + 1}',
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            onTap: urinish == 0
                                ? null
                                : () {
                                    urinish--;
                                    son = __ + 1;
                                    setState(() {});
                                  },
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          random();
          urinish = 3;
          son = 0;
          setState(() {});
        },
        child: const Icon(Icons.restart_alt_rounded),
      ),
    );
  }
}
