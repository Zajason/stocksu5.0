import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/signIn.dart';
import 'package:stocksu/signUp.dart';
import 'package:stocksu/stock_row.dart';
import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('MOST POPULAR'),
            backgroundColor: Colors.deepPurpleAccent,
            centerTitle: true),
        body: SignIn(),
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class MainUI extends StatefulWidget {
  const MainUI({Key? key}) : super(key: key);
  @override
  _MainUIState createState() => _MainUIState();
}

class Stock {
  Stock(this.name, this.price, this.change);
  final String name;
  final double price;
  final double change;
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lets make some money'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white60,
              alignment: Alignment.topLeft,
              child: Row(children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 11,
                ),
                Text(
                  'stock',
                  style: TextStyle(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 200,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text('price',
                    style: TextStyle(
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height / 200,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Text(
                  "change",
                  style: TextStyle(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 200,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 3.0,
              child: Divider(color: Colors.deepPurpleAccent),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.green,
                change: "44.40%",
                isBought: true,
                name: "MCF",
                isUp: true,
                price: "566.67",
                imageName: "images/microsoft.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.red,
                change: "67.89%",
                isBought: true,
                name: "TSL",
                isUp: true,
                price: "678.64",
                imageName: "images/tesla.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.red,
                change: "056.78%",
                isBought: true,
                name: "FCB",
                isUp: true,
                price: "56.89",
                imageName: "images/facebook.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.red,
                change: "88.89%",
                isBought: true,
                name: "APL",
                isUp: true,
                price: "567.90",
                imageName: "images/apple.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.green,
                change: "22.21%",
                isBought: true,
                name: "GGL",
                isUp: true,
                price: "566.67",
                imageName: "images/google.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.green,
                change: "44.40%",
                isBought: true,
                name: "MCF",
                isUp: true,
                price: "566.67",
                imageName: "images/microsoft.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.green,
                change: "44.40%",
                isBought: true,
                name: "MCF",
                isUp: true,
                price: "566.67",
                imageName: "images/microsoft.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_upward,
                tcolor: Colors.green,
                change: "44.40%",
                isBought: true,
                name: "MCF",
                isUp: true,
                price: "566.67",
                imageName: "images/microsoft.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
              child: Divider(
                color: Colors.deepPurpleAccent,
              ),
            ),
            StockRow(
                icon: Icons.arrow_downward,
                tcolor: Colors.red,
                change: "44.40%",
                isBought: true,
                name: "MCF",
                isUp: true,
                price: "566.67",
                imageName: "images/microsoft.png"),
          ]),
    );
  }
}
