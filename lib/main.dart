import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/authentication.dart';
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
        body: Authentication(),
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

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('images/microsoft.png'),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'MCF',
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    Text(
                      '(+0.25)',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 3.0,
                      child: Divider(color: Colors.blueGrey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(children: <Widget>[
                  Expanded(child: Chart()),
                ]),
                SizedBox(
                  height: 50,
                ),
                FlatButton(
                    color: Colors.deepPurpleAccent,
                    minWidth: 100,
                    height: 50,
                    onPressed: () {
                      print('pipes');
                    },
                    child: Text('Purchase stock',
                        style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  late List<StockData> _chartData;
  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: SfCartesianChart(
      series: <ChartSeries>[
        LineSeries<StockData, double>(
            dataSource: _chartData,
            xValueMapper: (StockData stockPrice, _) => stockPrice.year,
            yValueMapper: (StockData stockPrice, _) => stockPrice.stockPrice)
      ],
    ));
  }
}

List<StockData> getChartData() {
  final List<StockData> chartData = [
    StockData(2017, 400),
    StockData(2018, 512),
    StockData(2019, 467),
    StockData(2020, 487),
    StockData(2021, 644),
  ];
  return chartData;
}

class StockData {
  StockData(this.year, this.stockPrice);
  final double year;
  final double stockPrice;
}
