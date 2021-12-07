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
  var _currentItemSelected;
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  TextEditingController principalControlled = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';

  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;

    return Scaffold(
        appBar: AppBar(
          title: Text('Simple Interest Calculator'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: ListView(
              children: [
                getImageAsset(),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: principalControlled,
                      validator: (var value) {
                        if (value!.isEmpty) {
                          return 'Please enter principal Amount';
                        } else if (value.characters.isNotEmpty) {
                          return 'Please enter an Integer or a double number';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Principal',
                          hintText: 'Enter Principal e.g. 12000',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.yellowAccent, fontSize: 15.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: roiController,
                      validator: (var value) {
                        if (value!.isEmpty) {
                          return 'Please enter Rate of Interest';
                        } else if (value.characters.isNotEmpty) {
                          return 'Please enter an Integer or a double number';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Rate of Interest',
                          hintText: 'In percent',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.yellowAccent, fontSize: 15.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: termController,
                          validator: (var value) {
                            if (value!.isEmpty) {
                              return 'Please enter Term';
                            } else if (value.characters.isNotEmpty) {
                              return 'Please enter an Integer or a double number';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Term',
                              hintText: 'Time in years',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
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
                          value: _currentItemSelected,
                          onChanged: (var newValueSelected) {
                            //
                            _onDropDownItemSelected(newValueSelected);
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
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            this.displayResult = _calculateTotalReturns();
                          }
                        });
                      },
                      child: Text(
                        'Calculate',
                        textScaleFactor: 1.5,
                      ),
                    )),
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      onPressed: () {
                        setState(() {
                          _reset();
                        });
                      },
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
                    this.displayResult,
                    style: textStyle,
                  ),
                )
              ],
            ),
          ),
        ));
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

  void _onDropDownItemSelected(var newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalControlled.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result =
        'After $term years, your investment will be worth $totalAmountPayable $_currentItemSelected';

    return result;
  }

  void _reset() {
    principalControlled.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}
