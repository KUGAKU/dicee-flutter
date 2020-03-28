import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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

  int leftDiceNumber  = 2;
  int rightDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = 3;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = 4;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              )
          )
        ],
      ),
    );
  }
}


