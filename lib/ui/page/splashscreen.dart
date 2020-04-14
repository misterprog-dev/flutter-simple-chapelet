import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:simple_chapelet/ui/page/dashboard.dart';

import 'package:simple_chapelet/ui/page/Chapelet.dart';
import 'package:simple_chapelet/ui/page/Apprentissage.dart';
import 'package:simple_chapelet/ui/page/Invocations.dart';
import 'package:simple_chapelet/ui/page/Islam_piliers.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Chapelet',
      home: splashScreen(),
      routes: {
        '/dash': (BuildContext _) => new MyDashboard(),
        '/chapelet': (BuildContext _) => new Chapelet(),
        '/apprentissage': (BuildContext _) => new Apprentissage(),
        '/invocations': (BuildContext _) => new Invocations(),
        '/islampiliers': (BuildContext _) => new Islam_piliers(),
      },
    );
  }
}

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => new _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        /*new Center(
          child: new Image.asset('assets/images/background.jpg',
            fit: BoxFit.fill, width: 490.0,height: 1200,),
        ),*/
        new SplashScreen(
          seconds: 7,
          //imageBackground: new AssetImage("assets/images/background.jpg")),
          navigateAfterSeconds: new MyDashboard(),
          backgroundColor: Colors.white,
          loaderColor: Colors.greenAccent.shade700,
          title: new Text('\n\nMon Chapelet',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              //color: Colors.greenAccent.shade700,
              color: Color.fromRGBO(49, 87, 110, 1.0),
              fontFamily: 'Kurale',
            ),),
          loadingText: new Text("Chargement...", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

        )
      ],
    );
  }
}