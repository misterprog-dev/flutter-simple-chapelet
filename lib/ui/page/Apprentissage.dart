import 'package:flutter/material.dart';

class Apprentissage extends StatefulWidget {
  @override
  _ApprentissageState createState() => _ApprentissageState();
}

class _ApprentissageState extends State<Apprentissage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Apprentissage', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: 'Cormorant'),),
        centerTitle: true,
        backgroundColor: Colors.green[700],

        /*actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/Classroom_48px.png"),
          ),
        ],*/

      ),
    );
  }
}