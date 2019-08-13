import 'package:chat_app/src/widgets/app_button.dart';
import 'package:chat_app/src/widgets/app_icon.dart';
import 'package:chat_app/src/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String routeName = '/login';
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppIcon(),
            SizedBox(height: 48.0),
            AppTextField(
              inputText: 'Ingresar Email',
            ),
            SizedBox(height: 8.0),
            AppTextField(
              inputText: 'Ingresar Contraseña',
            ),
            SizedBox(height: 48.0),
            AppButton(
              color: Colors.blueAccent,
              onPressed: () {},
              name: 'Log in',
              ),
          ],
        ),
      ),
    );
  }
}