import 'package:flutter/material.dart';

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                height: double.infinity,
                width: 100,
                color: Colors.red,
                child: new Text('Container-1'),
              ),
              new Container(
                  color: Colors.blueAccent,
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          child: Center(
                            child: new Text('Center-1'),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      new Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                          child: Center(
                            child: new Text('Center-2'),
                          ))
                    ],
                  )),
              new Container(
                height: double.infinity,
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
