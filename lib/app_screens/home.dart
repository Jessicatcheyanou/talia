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
                PonyTailAsset()
              ],
            )));
  }
}

class PonyTailAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/ponytail.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
