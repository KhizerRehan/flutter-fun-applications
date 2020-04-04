import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          maintainBottomViewPadding: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: CircleAvatar(
                      radius: 80.0,
                      backgroundImage:
                          AssetImage('assets/images/hr_installments.png')),
                  padding: EdgeInsets.all(2.0),
                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  )),
              Text(
                'SignIn/SignUp Screen',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 200.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.grey,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    'Enter your phone details',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Source_Sans_Pro',
                      color: Colors.teal[900],
                      letterSpacing: 2.0,
                    ),
                  ),
                  subtitle: Text(
                    '+92-3315269174',
                    style: TextStyle(
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    'Enter your phone details',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Source_Sans_Pro',
                      color: Colors.teal[900],
                      letterSpacing: 2.0,
                    ),
                  ),
                  subtitle: Text(
                    'e.g: khizerrehan92@gmail.com',
                    style: TextStyle(
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
