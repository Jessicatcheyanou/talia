import 'package:flutter/material.dart';

//import './app_screens/home.dart';

//entry point on main application
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widgets",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Long List"),
          ),
          body: getListView())));
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
        leading: Icon(Icons.import_contacts), title: Text(listItems[index]));
  });
  return listView;
}
