import 'package:flutter/material.dart';

class messageAkwaba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Bienvenue dans Mon chapelet !'),
            /*action: SnackBarAction(
              label: 'Annuler',
              onPressed: () {
                // Some code to undo the change.
              },
            ),*/
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        //child: Text('Show SnackBar'),
      ),
    );
  }
}