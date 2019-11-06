import 'package:flutter/material.dart';

class Invocations extends StatefulWidget {
  @override
  _InvocationsState createState() => _InvocationsState();
}

class _InvocationsState extends State<Invocations> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Invocations', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: 'Cormorant'),),
        centerTitle: true,
        backgroundColor: Colors.green[700],
       /* actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/Guru_48px.png"),
            highlightColor: Colors.green[700],
          ),
        ],*/
      ),
    );
  }
}