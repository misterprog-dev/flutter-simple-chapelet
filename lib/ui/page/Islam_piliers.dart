import 'package:flutter/material.dart';

class Islam_piliers extends StatefulWidget {
  @override
  _Islam_piliersState createState() => _Islam_piliersState();
}

class _Islam_piliersState extends State<Islam_piliers> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Islam et piliers', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: 'Cormorant'),),
        centerTitle: true,
        backgroundColor: Colors.green[700],
       /* actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/Monastery_48px.png"),
            highlightColor: Colors.green[700],
          ),
        ],*/
      ),
    );
  }
}