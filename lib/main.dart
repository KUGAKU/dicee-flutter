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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber  = 5;
    var rightDiceNumber = 3;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: (){
                    print('pushed left button');
                  },
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: (){
                    print('pushed right button');
                  },
                ),
              )
          )
        ],
      ),
    );
  }
}
