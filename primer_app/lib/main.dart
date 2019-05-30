import 'package:flutter/material.dart';

void main () {
  runApp(
    new MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    final double fontSize = 30.0;
    const textColor = Colors.grey;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateless widget'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text(
                  'I love flutter',
                  style: new TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                  ),
                ),
                icon: new Icon(
                  Icons.favorite,
                  size: iconSize,
                  color: Colors.redAccent,
                )
              ),
              new MyCard(
                title: new Text(
                  'I like flutter',
                  style: new TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                  ),
                ),
                icon: new Icon(
                  Icons.thumb_up,
                  size: iconSize,
                  color: Colors.blueAccent,
                )
              ),
              new MyCard(
                title: new Text(
                  'Next video',
                  style: new TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                  ),
                  ),
                icon: new Icon(
                  Icons.queue_play_next,
                  size: iconSize,
                  color: Colors.greenAccent,
                )
              ),
            ],
        ),
        )
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  MyCard({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
            this.title,
            this.icon
          ],
          ),
        )
      ),
    );
  }
}