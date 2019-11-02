import 'package:flutter/material.dart';
import 'package:simple_chapelet/ui/widgets/MenuDashBoard.dart';


class MyDashboard extends StatefulWidget {

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  @override
  Widget build(BuildContext context) {

    //VARIABLES


    ///////////////////////////

    return Scaffold(
      appBar: AppBar(
        title: Text("Mon Chapelet"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        actions: <Widget>[

        ],
      ),
      backgroundColor: Colors.white,

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            //Menu Dashboard
            MenuDashBoard(title: "Programme Zikr", icon: Icons.home, warna: Colors.brown,),
            MenuDashBoard(title: "Apprendre douas", icon: Icons.home, warna: Colors.brown,),
            //monMenuDashBoard(title: "Carte et Paiement", icon: Icons.home, warna: Colors.brown,),
            //monMenuDashBoard(title: "Où se trouve mon bus?", icon: Icons.home, warna: Colors.brown,),
            //monMenuDashBoard(title: "Ma communauté", icon: Icons.home, warna: Colors.brown,),
            //monMenuDashBoard(title: "Divers", icon: Icons.home, warna: Colors.brown,),

          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}