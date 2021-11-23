import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurpleAccent,
            margin: EdgeInsets.only(left: 35.0, top: 50.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Jessica",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 55.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Ines Kanmegne:A female software developer passionate of what she does",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Tcheyanou",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 55.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Jessica",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 55.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Ines Kanmegne:A female software developer passionate of what she does",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Tcheyanou",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 55.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                PonyTailAsset(),
                PonyTailButton()
              ],
            )));
  }
}

class PonyTailAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/ponytail.jpg');
    Image image = Image(
      image: assetImage,
      fit: BoxFit.fill,
    );
    return Container(
      child: image,
      width: 250.0,
      height: 200.0,
    );
  }
}

class PonyTailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Contact Her",
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600),
        ),
        elevation: 6.0,
        onPressed: () {
          //action
          bookHer(context)
        },
      ),
    );
  }
}


