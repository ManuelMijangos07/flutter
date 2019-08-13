import 'package:chat_app/src/screens/chat_screen.dart';
import 'package:chat_app/src/screens/register_screen.dart';
import 'package:chat_app/src/screens/welcome_screen.dart';
import 'package:chat_app/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: WelcomeScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black45)
        ),
      ),
      initialRoute: WelcomeScreen.routeName,
      routes: <String, WidgetBuilder> {
        Login.routeName: (BuildContext context) => Login(),
        WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
        RegisterScreen.routeName: (BuildContext context) => RegisterScreen(),
        ChatScreen.routeName: (BuildContext context) => ChatScreen(),
      },
    ),
  );
}