import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: Mybutton(),
    )
  );
}
class Mybutton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<Mybutton> {
  void onPressButton() {

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateful widget'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text(
              'hello world',
              style: new TextStyle(
                fontSize: 40.0
              ),
            ),
            new RaisedButton(
              child: new Text('Actualizar'),
              color: Colors.blueAccent,
              onPressed: onPressButton,
            )
          ],
        ),
      ),
    );
  }
}