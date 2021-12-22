import 'package:flutter/material.dart';

class OnBesh extends StatefulWidget {
  const OnBesh({Key? key}) : super(key: key);

  @override
  _OnBeshState createState() => _OnBeshState();
}

class _OnBeshState extends State<OnBesh> {
  List lst = List.generate(17, (index) => index);
  List lst2 = List.generate(16, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width,
          color: Colors.cyan,
          child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.all(3.0),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "${lst[index] == 0 ? "" : lst[index]}",
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  lst2[index] = 1;
                  otkiz(index);
                  setState(() {});
                },
              );
            },
          ),
        ),
        Text(
          "${lst}",
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ]),
    );
  }

  otkiz(son) {
    int teng = 0;
    if (lst2[son] == 1) {
      lst[son] = 0;
      for (var i = 0; i < lst.length; i++) {
        if (lst[i] == 0) {
          lst[i] = son;
          lst[son] = 0;
        }
      }
    }
  }
}
