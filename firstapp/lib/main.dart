// Barrett Koster
// Your Name Here (replace mine, this is just demos
// of stuff anyone can use).

import "package:flutter/material.dart";

void main() // 23
{
  runApp(Yahtzee());
}

class Yahtzee extends StatelessWidget {
  const Yahtzee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yahtzee",
      home: YahtzeeHome(),
    );
  }
}

class YahtzeeHome extends StatefulWidget {
  const YahtzeeHome({super.key});

  @override
  State<YahtzeeHome> createState() => YahtzeeHomeState();
}

class YahtzeeHomeState extends State<YahtzeeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("yahtzee")),
      body: Column(children: [
        const Text("font styles",
            style: TextStyle(
              fontSize: 35,
              color: Colors.orange,
            )),
        const Spacer(flex: 1),
        const Text(
          "line 2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const Spacer(flex: 1),
        Container(
          decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(
                width: 8,
              )),
          child: const Text("in box", style: TextStyle(fontSize: 40)),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 1,
          )),
          height: 100,
          width: 100,
          child: Stack(
            children: [
              const Positioned(
                left: 10,
                top: 40,
                child: Text("hi"),
              ),
              const Text("lo"),
              Positioned(
                  left: 80,
                  top: 70,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
