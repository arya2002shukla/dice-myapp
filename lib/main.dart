import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber=1;
  int rightdicenumber= 5;
  void changediceface(){
    setState(() {
      rightdicenumber= Random().nextInt(6)+1;
      leftdicenumber= Random().nextInt(6)+1;
      print('dice number = $rightdicenumber');
      print("dice number= $leftdicenumber");
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Expanded(
                child: FlatButton(onPressed:(){
                  changediceface();

                },
                    child: Image.asset("images/dice$leftdicenumber.png"),
                )
            ),

            Expanded(
                child: FlatButton(onPressed:(){
                  changediceface();
                },
                    child: Image.asset("images/dice$rightdicenumber.png"))
            ),
          ],
        ),
      ),
    );
  }
}







