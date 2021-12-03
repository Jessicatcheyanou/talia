import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful App Example",
    home: SIForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: [
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g. 12000',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Rate of Interest',
                      hintText: 'In percent',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      decoration: InputDecoration(
                          labelText: 'Term',
                          hintText: 'Time in years',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                    Container(
                      width: _minimumPadding * 5,
                    ),
                    Expanded(
                        child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      value: 'Rupees',
                      onChanged: (var newValueSelected) {
                        //
                      },
                    ))
                  ],
                )),
            Row(
              children: [
                Expanded(
                    child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Theme.of(context).primaryColorDark,
                  onPressed: () {},
                  child: Text(
                    'Calculate',
                    textScaleFactor: 1.5,
                  ),
                )),
                Expanded(
                    child: RaisedButton(
                  color: Theme.of(context).primaryColorDark,
                  textColor: Theme.of(context).primaryColorLight,
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    textScaleFactor: 1.5,
                  ),
                ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: Text(
                'Todo Text',
                style: textStyle,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/LDTV.jpg');
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
}
