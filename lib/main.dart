import 'package:flutter/material.dart';

//import './app_screens/home.dart';

//entry point on main application
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Basic List View Elements"),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_cloudy),
      ),
      ListTile(
        leading: Icon(Icons.image),
        title: Text("Image"),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),
      ListTile(leading: Icon(Icons.access_alarm), title: Text("Access Alarm")),
      Text('Yet another widget of this listView'),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}
