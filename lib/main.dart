import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stocksu/authentication.dart';
import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';

void main() async {
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();

  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('MOST POPULAR'),
            backgroundColor: Colors.blueGrey[800],
            centerTitle: true),
        body: Authentication(),
        backgroundColor: Colors.blueGrey[500],
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.blueGrey[800],
          alignment: Alignment.topLeft,
          child: Text(
            '         STOCK    PRICE           DIF  ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 3.0,
          child: Divider(color: Colors.blueGrey),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/microsoft.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'MCF',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '77,67%',
                  style: TextStyle(color: Colors.redAccent),
                ),
                Icon(
                  Icons.arrow_downward,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      child: Text('BUY'),
                      // Within the `FirstRoute` widget
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => InfoPage()),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('images/tesla.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'TSL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '34.62%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/facebook.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'FCB',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '24.03%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/google.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GGL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.34%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/google.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GGL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.34%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/google.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GGL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.34%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey,
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/google.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GGL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.34%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('images/google.png'),
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GGL',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '450.78',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.34%',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  color: Colors.blueGrey[500],
                  child: FlatButton(
                      onPressed: () {
                        print('oops');
                      },
                      child: Text('BUY')),
                )
              ],
            ),
          ),
        ),
      ],
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
      body: SafeArea(
        child: Expanded(
          child: Container(
            color: Colors.blueGrey[800],
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
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    Text(
                      '(+0.25)',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
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
                    color: Colors.blueGrey[500],
                    minWidth: 100,
                    height: 50,
                    onPressed: () {
                      print('pipes');
                    },
                    child: Text('Purchase stock',
                        style: TextStyle(color: Colors.white)))
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
