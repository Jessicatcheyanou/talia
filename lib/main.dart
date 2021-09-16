import 'package:flutter/material.dart';

import './app_screens/home.dart';

//entry point on main application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exploring UI widgets',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Talia's First App"),
            backgroundColor: Colors.amber,
          ),
          body: Home(),
        ));
  }
}
