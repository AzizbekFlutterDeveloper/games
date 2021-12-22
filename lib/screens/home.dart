import 'package:flutter/material.dart';
import '/screens/model/data.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Games',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemBuilder: (_, __) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                child: InkWell(
                  child: Container(
                    child: Center(),
                    height: size.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${rasmlar[__]}'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.black, width: 5),
                      color: Colors.yellow,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {});
                    if (LST[__].index == 0) {
                      ticAvaz(_);
                    } else if (LST[__].index == 1) {
                      ticAziz(context);
                    } else if (LST[__].index == 2) {
                      toshQaychi(context);
                    } else if (LST[__].index == 3) {
                      moshina(context);
                    } else if (LST[__].index == 4) {
                      SonTop(context);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  height: size.width * 0.13,
                  width: size.width * 1,
                  child: Center(
                      child: Text(
                    "${gamename[__]}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                ),
              )
            ],
          );
        },
        itemCount: LST.length,
      ),
    );
  }

  returnImage(i) {
    if (i == 0) {
      return LST[i].image =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrvjVsYbbThlEUVLe9p2VC7wV1Dh5w_dvXhg&usqp=CAU";
    }
  }
}
