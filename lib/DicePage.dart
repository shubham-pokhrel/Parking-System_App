import 'package:flutter/material.dart';
import 'dart:math';
import 'main.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 2;
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 19, 2),
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Color.fromARGB(255, 228, 15, 0),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              //flex: 2,
              child: GestureDetector(
                onTap: () {
                  //print('Left');
                  setState(() {
                    LeftDiceNumber = Random().nextInt(5) + 1;
                    RightDiceNumber = Random().nextInt(5) + 1;
                  });
                  // print(LeftDiceNumber);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image(
                    image: AssetImage('assets/dice$LeftDiceNumber.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    RightDiceNumber = Random().nextInt(5) + 1;
                    LeftDiceNumber = Random().nextInt(5) + 1;
                  });
                  //print('Right');
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('assets/dice$RightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
