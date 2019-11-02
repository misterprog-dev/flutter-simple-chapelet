import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:simple_chapelet/ui/page/dashboard.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Chapelet',
      home: splashScreen(),
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
        new Center(
          child: new Image.asset('assets/images/background.jpg',
            fit: BoxFit.fill, width: 490.0,height: 1200,),
        ),
        new SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new MyDashboard(),
          backgroundColor: Colors.white,
          loaderColor: Colors.greenAccent.shade700,
          title: new Text('\n\nMon Chapelet',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colors.greenAccent.shade700,
              fontFamily: 'Kurale',
            ),),
          loadingText: new Text("Chargement...", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

        )
      ],
    );
  }
}