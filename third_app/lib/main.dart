import 'package:flutter/material.dart';

void mian() {
  runApp(
    new MaterialApp(
      home: MyTextField(),
    )
  );
}

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  void onChanged(String value) {
    print(value);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         title: new Text('EditText widget'),
         backgroundColor: Colors.redAccent,
       ),
       body: new Container(
         child: new Center(
           child: new Column(
             children: <Widget>[
               new TextField(
                 decoration: new InputDecoration(hintText: 'Ingrese el texto aquí'),
                 onSubmitted: (String value) {onChanged(value);},
               ),
             ]
            )
         ),
       ),
    );
  }
}