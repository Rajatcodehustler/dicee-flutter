import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDN=1;
  int rDN=1;
 void Dface(int a, int b){
   setState(() {
     a= Random().nextInt(6) + 1;
     b = Random().nextInt(6) + 1;
   });

 }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      alignment: Alignment.center,
      child: TextButton( onPressed: () { Dface(lDN,rDN);

      },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Expanded(
                flex: 1,
                child: Image.asset('images/dice$lDN.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Expanded(
                  flex: 1,
                  child: Image.asset('images/dice$rDN.png')),
            ),
          ],
        ),
      ),
    );
  }
}




