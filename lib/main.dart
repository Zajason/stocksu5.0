import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('MOST POPULAR'),
            backgroundColor: Colors.blueGrey[800],
            centerTitle: true),
        body: MainUI(),
        backgroundColor: Colors.blueGrey[500],
      ),
    ),
  );
}

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
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
