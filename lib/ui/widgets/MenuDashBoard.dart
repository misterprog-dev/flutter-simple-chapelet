import 'package:flutter/material.dart';

class MenuDashBoard extends StatelessWidget {

  MenuDashBoard({this.title, this.icon, this.fenetre});

  final String title;
  final String icon;// Pour le nom de l'image
  final int fenetre;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.all(8.0),
      child: new InkWell(
        splashColor: Colors.green[700],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(icon),
              Text(
                title,
                style: new TextStyle(fontSize: 18, fontStyle: FontStyle.normal, ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        onTap: (){

          switch (fenetre) {
            case 1:
              Navigator.popAndPushNamed(context, '/chapelet');
              break;
            case 2:
              Navigator.popAndPushNamed(context, '/apprentissage');
              break;
            case 3:
              Navigator.popAndPushNamed(context, '/invocations');
              break;
            case 4:
              Navigator.popAndPushNamed(context, '/islampiliers');
              break;
            default:
            //Navigator.popAndPushNamed(context, '/');
              break;
          }

        },
      ),
    );
  }
}
