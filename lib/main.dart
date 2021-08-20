import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Center(
              child: Text('8 Ball Magic'),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Material(),
        ),
      ),
    );

class Material extends StatefulWidget {
  @override
  _MaterialState createState() => _MaterialState();
}

class _MaterialState extends State<Material> {
  int clickButton = 1;
  void change8BallFace() {
    clickButton = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  change8BallFace();
                });
              },
              child: Image.asset('images/ball$clickButton.png'),
            ),
          )
        ],
      ),
    );
  }
}
