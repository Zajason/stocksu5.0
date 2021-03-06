import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signUp.dart';
import 'dart:math';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../support/flutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailfield = TextEditingController();
  TextEditingController _passwordfield = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: _emailfield,
                    decoration: InputDecoration(
                        hintText: 'example@email.com',
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: _passwordfield,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.circular(15.0),
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
                  child: Text('Sign In'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'Dont have an account? ',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
