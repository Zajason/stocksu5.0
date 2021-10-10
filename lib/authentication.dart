import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/main.dart';
import 'dart:math';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:stocksu/flutterfire.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailfield = TextEditingController();
  TextEditingController _passwordfield = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.blueGrey[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _emailfield,
              decoration: InputDecoration(
                  hintText: 'example@email.com',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _passwordfield,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width / 1.4,
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await Register(_emailfield.text, _passwordfield.text);

                  if (shouldNavigate) {}
                },
                child: Text('Sign Up '),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width / 1.4,
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_emailfield.text, _passwordfield.text);

                  if (shouldNavigate) {
                    Navigator.push<void>(context,
                        MaterialPageRoute(builder: (context) => MainUI()));
                  }
                },
                child: Text('Register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
