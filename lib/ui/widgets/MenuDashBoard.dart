import 'package:flutter/material.dart';
import 'package:simple_chapelet/ui/page/Chapelet.dart';
import 'package:simple_chapelet/ui/page/Apprentissage.dart';
import 'package:simple_chapelet/ui/page/Invocations.dart';
import 'package:simple_chapelet/ui/page/Islam_piliers.dart';

class MenuDashBoard extends StatelessWidget {

  MenuDashBoard({this.title, this.icon, this.fenetre});

  final String title;
  final String icon;// Pour le nom de l'image
  final int fenetre;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){

          Navigator.of(context).pop();

          switch (fenetre) {
            case 1:
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Chapelet()
              ));
              break;
            case 2:
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Apprentissage()
              ));
              break;
            case 3:
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Invocations()
              ));
              break;
            case 4:
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Islam_piliers()
              ));
              break;

          }
        },
        splashColor: Colors.green[700],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(icon),
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
