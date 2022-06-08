import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_language_app/constant.dart';
import 'package:learn_language_app/screen/categoryList.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(100)),
              color: purple.withOpacity(0.6)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const Icon(Icons.menu),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.circle,
                  size: 40,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Easy and",
                  style: mainStyle(50, Colors.white),
                ),
                Text(
                  "quick",
                  style: mainStyle(50, Colors.white),
                ),
                Text(
                  "Learn",
                  style: mainStyle(50, Colors.white),
                ),
                Text(
                  "Language",
                  style: mainStyle(50, Colors.white),
                ),
                Text(
                  "online!",
                  style: mainStyle(50, Colors.white),
                ),
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CategoryList()),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: purple),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                child: Text(
                  "START",
                  style: regularFont(14, Colors.white, FontWeight.w700),
                ),
              )),
        ),
      ),
    );
  }
}
