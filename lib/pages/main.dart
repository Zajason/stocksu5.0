import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/models/stockList.dart';
import 'signIn.dart';
import 'signUp.dart';
import '../models/stock_row.dart';
import 'dart:math';
import 'package:stocksu/models/stockList.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  return runApp(MaterialApp(
    home: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.deepPurpleAccent),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurpleAccent,
          ),
          canvasColor: Colors.white,
          dividerColor: Colors.deepPurpleAccent,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SignIn()),
  ));
}

class MainUI extends StatefulWidget {
  MainUI({Key? key}) : super(key: key);

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
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: 20,
              child: Divider(),
            ),
            SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Search",
                    prefix: Icon(Icons.search),
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    )),
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
              height: MediaQuery.of(context).size.height / 100,
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
              child: Divider(),
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
