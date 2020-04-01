import 'package:flutter/material.dart';

class IamPoorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          titleSpacing: 5.0,
          centerTitle: true,
          title: new Text('I am Poor App'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/images/i_am_poor.jpg'),
          ),
        ),
      ),
    );
  }
}

// HELP:
// https://drive.google.com/uc?export=download&id=1DcvqcMiRD9GA9Cci9akfSMDfPd9Nrn3e
