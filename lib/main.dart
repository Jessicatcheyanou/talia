import 'package:flutter/material.dart';

//import './app_screens/home.dart';

//entry point on main application
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widgets",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Floating Action Button and Snack Bar"),
        ),
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Clicked");
          },
          child: Icon(Icons.add),
          tooltip: "Add one more Item",
        ),
      )));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        debugPrint('Performing dummy UNDO Operation');
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.import_contacts),
      title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context, listItems[index]);
      },
    );
  });
  return listView;
}
