import 'package:flutter/material.dart';

class MenuDashBoard extends StatelessWidget {

  MenuDashBoard({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.home, size: 70,color: warna,),
              Text(
                title,
                style: new TextStyle(fontSize: 17, fontStyle: FontStyle.normal, ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
