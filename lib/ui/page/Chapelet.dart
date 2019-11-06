import 'package:flutter/material.dart';

class Chapelet extends StatefulWidget {
  @override
  _ChapeletState createState() => _ChapeletState();
}

class _ChapeletState extends State<Chapelet> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Chapelet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: 'Cormorant'),),
        centerTitle: true,
        backgroundColor: Colors.green[700],

        /*actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/Bracelet_48px.png"),
          ),
        ],*/
      ),
    );
  }
}