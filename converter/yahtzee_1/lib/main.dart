// KENNY NGUYEN
import "dart:math";
import "package:flutter/material.dart";

void main() // 23
{
  runApp(const Yahtzee());
}

class Yahtzee extends StatelessWidget {
  const Yahtzee({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kenny's Yahtzee",
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
      // app bar
      appBar: AppBar(title: const Text("Kenny's Yahtzee")),

      // body
      body: const Column(children: []),
    );
  }
}

class Dice extends StatefulWidget {
  final DiceState diceState = DiceState();

  Dice({super.key});

  @override
  State<Dice> createState() => diceState;

  int roll() {
    return diceState.roll();
  }
}

class DiceState extends State<Dice> {
  // keeps track of the number of dots on the dice
  var numberOfDots = 0;

  // boolean keeping track of whether the dice is "active" or not
  bool stateHold = false;

  // random number
  final random = Random();

  // roll function, randomly determines # of dots
  int roll() {
    if (!stateHold) {
      setState(() {
        numberOfDots = random.nextInt(6) + 1;
      });
    }

    return numberOfDots;
  }

  // build function, determines the number of dots on the dice face
  @override
  Widget build(BuildContext context) {
    List<Dot> dotsOnFace = [];

    // face with 1 dot
    if (numberOfDots == 1) {
      dotsOnFace.add(Dot(top: 40, left: 40));
    }
    // face with 1 dot
    else if (numberOfDots == 2) {
      dotsOnFace.add(Dot(top: 40, left: 40));
    }
  }
}

// class representing a single dot, to be used to make face of the dice
class Dot extends Positioned {
  Dot({super.key, super.top, super.left})
      : super(
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        );
}
