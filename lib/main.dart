import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;

  void newval() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print("dice num = $leftDiceNumber");
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                newval();
              },


              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),


          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  // rightDiceNumber = Random().nextInt(6)+1;
                  //leftDiceNumber = Random().nextInt(6)+1;
                  //print("dice num = $rightDiceNumber");
                  newval();
                },
                );
                //print("right die");
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}

