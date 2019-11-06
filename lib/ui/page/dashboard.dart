import 'package:flutter/material.dart';
import 'package:simple_chapelet/ui/widgets/MenuDashBoard.dart';
import 'package:simple_chapelet/ui/widgets/messageAkwaba.dart';


class MyDashboard extends StatefulWidget {

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    //VARIABLES


    ///////////////////////////

    return Scaffold(
        key: _scaffoldKey,
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

      body: new Stack(
        children: <Widget>[
          new Center(
            child: new Image.asset('assets/images/background_dashbaord.jpg',
              fit: BoxFit.fill, width: 490.0,height: 1200,),
          ),
          new Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                //Menu Dashboard
                MenuDashBoard(title: "Chapelet",icon: "assets/images/Bracelet_96px.png",fenetre: 1,),
                MenuDashBoard(title: "Apprentissage", icon: "assets/images/Classroom_96px.png", fenetre: 2,),
                MenuDashBoard(title: "Invocations", icon: "assets/images/Guru_96px.png", fenetre: 3,),
                MenuDashBoard(title: "Islam et piliers", icon: "assets/images/Monastery_96px.png", fenetre: 4,),
                //monMenuDashBoard(title: "Ma communauté", icon: Icons.home, warna: Colors.brown,),
                //monMenuDashBoard(title: "Divers", icon: Icons.home, warna: Colors.brown,),

              ],
            ),
          ),
          //messageAkwaba(),
        ],
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // Display Snackbar
  void get _displaySnackbar {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
        duration: Duration(seconds: 10),
        content: Text('Bienvenue dans Mon chapelet !')
    ));
  }

}