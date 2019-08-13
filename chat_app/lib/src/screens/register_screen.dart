import 'package:chat_app/src/widgets/app_button.dart';
import 'package:chat_app/src/widgets/app_icon.dart';
import 'package:chat_app/src/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register';
  RegisterScreen({Key key}) : super(key: key);

  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final auth = FirebaseAuth.instance;
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            AppIcon(),
            SizedBox(height: 48.0,),
            AppTextField(
              inputText: 'Ingresar Email',
              onChanged: (value) { _email = value; },
            ),
            SizedBox(height: 8.0),
            AppTextField(
              inputText: 'Ingresar Contraseña',
              onChanged: (value) { _password = value; },
              obscureText: true,
            ),
            SizedBox(height: 48.0),
            AppButton(
              color: Colors.blueAccent,
              name: 'Registrarse',
              onPressed: () {
                try {
                  var newUser = auth.createUserWithEmailAndPassword(email: _email, password: _password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, '/chat');
                  }
                } catch (err) {
                  print(err);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}