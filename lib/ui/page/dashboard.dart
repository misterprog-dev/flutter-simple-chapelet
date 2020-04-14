import 'package:flutter/material.dart';
import 'package:simple_chapelet/ui/widgets/MenuDashBoard.dart';
import 'package:simple_chapelet/ui/widgets/MyDrawer.dart';


class MyDashboard extends StatefulWidget {

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var isLargeScreen = false;
  var numberElt = 2;

  @override
  Widget build(BuildContext context) {

    //VARIABLES


    ///////////////////////////

    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Mon Chapelet"),
        elevation: .1,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
        //backgroundColor: Colors.green[700],
        actions: <Widget>[

        ],
      ),
      backgroundColor: Colors.white,

      drawer: MyDrawer(),

      body: OrientationBuilder(builder: (context, orientation){

        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
          numberElt = 3;
        } else {
          isLargeScreen = false;
          numberElt = 2;
        }

        return new Stack(

          children: <Widget>[
            new Center(
              child: new Image.asset('assets/images/background_dashbaord.jpg',
                fit: BoxFit.fill, width: 1500.0,height: 1500,),
            ),
            new Container(
              padding: EdgeInsets.all(30.0),
              child: GridView.count(
                crossAxisCount: orientation == Orientation.portrait ? numberElt : numberElt+1,
                children: <Widget>[
                  //Menu Dashboard
                  MenuDashBoard(title: "Chapelet",icon: "assets/images/Bracelet_96px.png",fenetre: 1,),
                  MenuDashBoard(title: "Apprentissage", icon: "assets/images/Classroom_96px.png", fenetre: 2,),
                  MenuDashBoard(title: "Invocations", icon: "assets/images/Guru_96px.png", fenetre: 3,),
                  MenuDashBoard(title: "Islam et piliers", icon: "assets/images/Monastery_96px.png", fenetre: 4,),
                  //monMenuDashBoard(title: "Ma communauté", icon: Icons.home, warna: Colors.brown,),
                  //monMenuDashBoard(title: "Divers", icon: Icons.home, warna: Colors.brown,),

                ],
              )
            )
          ],
        );
      }),

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