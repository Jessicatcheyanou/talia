import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.amber,
      child: Center(
        child: Text(
          "Welcome to Talia",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 40.0),
        ),
      ),
    );
  }
}
