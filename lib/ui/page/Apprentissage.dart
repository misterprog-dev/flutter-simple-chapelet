import 'package:flutter/material.dart';
import 'package:simple_chapelet/ui/widgets/MyDrawer.dart';

class Apprentissage extends StatefulWidget {
  @override
  _ApprentissageState createState() => _ApprentissageState(); //
}

class _ApprentissageState extends State<Apprentissage> {
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      body: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return new Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background_chapelet.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            child: AppBar(
              title: new Text(
                'Apprentissage',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color.fromRGBO(49, 87, 110, 1.0),
                    fontFamily: 'Cormorant'),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Image.asset("assets/images/Classroom_48px.png"),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ]);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, '/dash');
        },
        child: Icon(Icons.home),
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
    );
  }
}
