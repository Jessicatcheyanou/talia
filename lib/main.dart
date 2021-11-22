import 'package:flutter/material.dart';

import './app_screens/home.dart';

//entry point on main application
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Home(),
  ));
}
