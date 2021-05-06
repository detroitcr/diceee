import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'dicee',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;

  int rightDiceNumber = 5;

  void changeDiceFace() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) +
            1; //for right dice number so we pressed left dice right dice number is automatically roll
        print('diceNumber:$leftDiceNumber');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.white,
            height: 40,
            width: 150,
            child: FlatButton(
              child: Icon(
                Icons.star,
                size: 25,
                color: Colors.red,
              ),
              onPressed: () {
                setState(
                  () {
                    changeDiceFace();
                  },
                );
              },
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          Text(
            'CR is great',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatefulWidget {
//   const DicePage({Key key}) : super(key: key);
//
//   @override
//   _DicePageState createState() => _DicePageState();
// }
//
// class _DicePageState extends State<DicePage> {
//   int leftDiceNumber = 5;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
// //flex: 2,
//             child: FlatButton(
//               onPressed: () {
//                 setState(
//                   () {
//                     leftDiceNumber = 3;
//                     print('diceNumber = $leftDiceNumber');
//                   },
//                 );
//               },
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ),
// // Image(image: AssetImage('images/dice1.png'),),
//           ),
//           Expanded(
// //flex: 1,
//             child: FlatButton(
//               onPressed: () {
//                 print('Right button is pressed');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//class DicePage extends StatelessWidget {

//}

// Image(
// image: AssetImage('images/dice1.png'),
// ),
