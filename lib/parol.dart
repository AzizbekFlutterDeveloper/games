import 'package:flutter/material.dart';
import 'screens/home.dart';

class Parol extends StatefulWidget {
  const Parol({Key? key}) : super(key: key);

  @override
  _ParolState createState() => _ParolState();
}

class _ParolState extends State<Parol> {
  List lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, "<", 0, "X"];
  List lst2 = [];
  int password = 0;
  int parolxato = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/parolorqa.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.365,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.cyan,
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                    child: parolxato > 0
                        ? const Text(
                            "Parol xato",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "*" * lst2.length,
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.635,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: CustomScrollView(slivers: [
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 5),
                              shape: BoxShape.circle,
                              color: Colors.cyan,
                            ),
                            child: Center(
                              child: Text(
                                "${lst[index]}",
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          onTap: password == 4
                              ? null
                              : () {
                                parolxato = 0;
                                  password += 1;
                                  bajar(index);
                                  lst2.length == 4
                                      ? hisob()
                                      : print(lst[index]);
                                  setState(() {});
                                },
                        );
                      },
                      childCount: 12,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bajar(son) {
    print(lst[son]);
    if (lst[son] == 1) {
      lst2.add("1");
    } else if (lst[son] == 2) {
      lst2.add("2");
    } else if (lst[son] == 3) {
      lst2.add("3");
    } else if (lst[son] == 4) {
      lst2.add("4");
    } else if (lst[son] == 5) {
      lst2.add("5");
    } else if (lst[son] == 6) {
      lst2.add("6");
    } else if (lst[son] == 7) {
      lst2.add("7");
    } else if (lst[son] == 8) {
      lst2.add("8");
    } else if (lst[son] == 9) {
      lst2.add("9");
    } else if (lst[son] == 0) {
      lst2.add("0");
    } else if (lst[son] == "X") {
      lst2.clear();

      password = 0;
    } else if (lst[son] == '<') {
      password -= 2;
      lst2.removeLast();
      setState(() {});
    }
  }

  hisob() {
    String parol = lst2.join();

    if (parol == "2003") {
      lst2.clear();
      password = 0;
      setState(() {});
      parolxato = 0;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHome()));
    } else {
      parolxato++;
      print("Parol hato");
      lst2.clear();
      password = 0;
      setState(() {});
    }
  }
}
