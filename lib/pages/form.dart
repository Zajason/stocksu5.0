import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../support/flutterfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'main.dart';

class FormPage extends StatefulWidget {
  final nameController = TextEditingController();
  final adressController = TextEditingController();
  final dssController = TextEditingController();

  FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Iasonas Zakynthinos',
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: FlutterPwValidator(
                    width: 400,
                    height: 150,
                    minLength: 1,
                    onSuccess: () {
                      print("skata");
                    },
                    controller: widget.nameController,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: '000000000',
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: 'DSS(10 DIGIT INVESTOR CODE)',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: FlutterPwValidator(
                    width: 400,
                    height: 150,
                    minLength: 1,
                    onSuccess: () {
                      print("skata");
                    },
                    controller: widget.dssController,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'TSIMISKI 67',
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: 'MAIN ADRESS',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: FlutterPwValidator(
                    width: 400,
                    height: 150,
                    minLength: 1,
                    onSuccess: () {
                      print("skata");
                    },
                    controller: widget.adressController,
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: SfDateRangePicker()),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: MaterialButton(
                    onPressed: () async {
                      Navigator.push<void>(context,
                          MaterialPageRoute(builder: (context) => MainUI()));
                    },
                    child: Text('Sign Up'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
