import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      elevation: 0,
      child: new ListView(
        children: <Widget>[
          new Container(child: new DrawerHeader(child: new CircleAvatar()),color: Colors.tealAccent,),
        ],
      ),
    );
  }
}
