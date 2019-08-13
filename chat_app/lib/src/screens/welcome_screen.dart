import 'package:chat_app/src/widgets/app_button.dart';
import 'package:chat_app/src/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '';
  WelcomeScreen({Key key}) : super(key: key);

  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            SizedBox(height: 48.0),
            AppButton(
              color: Colors.lightBlueAccent,
              name: 'Log in',
              onPressed: () { Navigator.pushNamed(context, '/login'); }
            ),
            SizedBox(height: 8.0),
            AppButton(
              color: Colors.blueAccent,
              name: 'Sing up',
              onPressed: () { Navigator.pushNamed(context, '/register'); }
            ),
          ],
        ),
      ),
    );
  }
}