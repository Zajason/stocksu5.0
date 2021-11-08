import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'form.dart';
import 'dart:math';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../support/flutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'form.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'main.dart';

var passwordText = 'Password';
var passwordColor = Colors.black;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailfield = TextEditingController();
  TextEditingController _passwordfield = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Column(
              children: [
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
                          labelText: passwordText,
                          labelStyle: TextStyle(color: passwordColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: new FlutterPwValidator(
                        width: 400,
                        height: 150,
                        minLength: 6,
                        numericCharCount: 1,
                        uppercaseCharCount: 1,
                        specialCharCount: 1,
                        onSuccess: () {
                          print('skata');
                        },
                        controller: _passwordfield),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              width: MediaQuery.of(context).size.width / 1.4,
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await Register(_emailfield.text, _passwordfield.text);
                  if (shouldNavigate) {
                    Navigator.push<void>(context,
                        MaterialPageRoute(builder: (context) => FormPage()));
                  }
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
