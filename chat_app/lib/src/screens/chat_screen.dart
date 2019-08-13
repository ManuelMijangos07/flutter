import 'package:flutter/material.dart';
 
class ChatScreen extends StatefulWidget {
  static const String routeName = '/chat';

  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
      ),
    );
  }
}