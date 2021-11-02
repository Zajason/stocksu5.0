import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/signIn.dart';
import 'package:stocksu/signUp.dart';
import 'package:stocksu/stock_row.dart';
import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfoPage extends StatefulWidget {
  final String price;
  final String name;
  final String imageName;
  final bool isBought;
  final bool isUp;
  final String change;
  final Color tcolor;
  final IconData icon;

  InfoPage(
      {required this.icon,
      required this.name,
      required this.tcolor,
      required this.change,
      required this.isBought,
      required this.isUp,
      required this.price,
      required this.imageName});

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
                      image: AssetImage(widget.imageName),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    Text(
                      widget.change,
                      style: TextStyle(color: widget.tcolor, fontSize: 20),
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
