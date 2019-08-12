import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget getButton(MaterialAccentColor color, String name, VoidCallback onPressed){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        elevation: 5.0,
        child: SizedBox(
          height: 43.0,
          child: FlatButton(
          child: Text(name),
          onPressed: onPressed,
        ),
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('images/logo.png'),
                Text('Flutter Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 48.0),
            getButton(
              Colors.lightBlueAccent,
              'Log in',
              () {}
            ),
            getButton(
              Colors.blueAccent,
              'Sing up',
              () {}
            ),
          ],
        ),
      ),
    );
  }
}