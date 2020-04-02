import 'package:flutter/material.dart';

class MiCardAppRowStrech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Container(
                color: Colors.red,
                child: new Text('Container-1'),
              ),
              SizedBox(
                width: 20,
              ),
              new Container(
                color: Colors.blueAccent,
                child: new Text('Container-1'),
              ),
              SizedBox(
                width: 20,
              ),
              new Container(
                color: Colors.green,
                child: new Text('Container-1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiCardAppColumnStrech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Container(
                height: 100,
                color: Colors.red,
                child: new Text('Container-1'),
              ),
              SizedBox(
                height: 20,
              ),
              new Container(
                height: 100,
                color: Colors.blueAccent,
                child: new Text('Container-1'),
              ),
              SizedBox(
                height: 20,
              ),
              new Container(
                height: 100,
                color: Colors.green,
                child: new Text('Container-1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Due to cross Axis alignment containers with greatest
// width expand all small containers up to that width.
class MiCardAppCrossAxisAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: 100,
                width: 200,
                color: Colors.red,
                child: new Text('Container-1'),
              ),
              new Container(
                height: 150,
                width: 400,
                color: Colors.blueAccent,
                child: new Text('Container-1'),
              ),
              new Container(
                height: 200,
                width: 600,
                color: Colors.green,
                child: new Text('Container-1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Part-1
class MiCardAppPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: new Column(
            mainAxisSize: MainAxisSize.min, // Inspect using flutter Inspector
            children: <Widget>[
              new Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: new Text('Container-1'),
              ),
              new Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: new Text('Container-1'),
              ),
              new Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: new Text('Container-1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
