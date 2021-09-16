import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.amber,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 40.0),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    var luckyNumber = random.nextInt(10);

    return "Your Lucky Number is $luckyNumber";
  }
}
