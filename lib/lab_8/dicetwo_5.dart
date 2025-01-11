// import 'package:flutter/material.dart';
// import 'dart:math';
//
// class DiceRoller extends StatefulWidget {
//   const DiceRoller({super.key});
//
//   @override
//   State<DiceRoller> createState() => _DiceRollerState();
// }
//
// class _DiceRollerState extends State<DiceRoller> {
//   int diceIndex = 0;
//
//   // List to simulate dice faces (1-6)
//   final List<int> diceFaces = [1, 2, 3, 4, 5, 6];
//
//   void rollDice() {
//     setState(() {
//       diceIndex = Random().nextInt(6); // Generate random index (0-5)
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dice Roller"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Rolled Number: ${diceFaces[diceIndex]}',
//               style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: rollDice,
//               child: const Text("Roll Dice"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//Random use karyu a na mate aa import karelu che
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  //initialize karva mate 1 aapelu banne ne
  int dice1Index = 1;
  int dice2Index = 1;

  //image ni value change nay karvi atle final is used,
  //const can also be used agar aagad value change na karta hoi
  final List<String> diceFaces = [
    'assets/images/dice1.png',
    'assets/images/dice2.png',
    'assets/images/dice3.png',
    'assets/images/dice4.png',
    'assets/images/dice5.png',
    'assets/images/dice6.png'
  ];

  //random index generate karva method
  void rollDice() {
    setState(() {
      dice1Index = Random().nextInt(6);
      dice2Index = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  diceFaces[dice1Index],
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 20),
                Image.asset(
                  diceFaces[dice2Index],
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
