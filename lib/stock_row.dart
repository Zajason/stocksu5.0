import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stocksu/main.dart';

class StockRow extends StatefulWidget {
  final String price;
  final String name;
  final String imageName;
  final bool isBought;
  final bool isUp;
  final String change;

  StockRow(
      {required this.name,
      required this.change,
      required this.isBought,
      required this.isUp,
      required this.price,
      required this.imageName});

  _StockRowState createState() => _StockRowState();
}

class _StockRowState extends State<StockRow> {
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: MediaQuery.of(context).size.width / 40),
            Image(
              image: AssetImage(widget.imageName),
              width: 25,
              height: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              widget.price,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              widget.change,
              style: TextStyle(color: Colors.redAccent),
            ),
            Icon(
              Icons.arrow_downward,
              color: Colors.redAccent,
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: FlatButton(
                  child: Text('BUY'),
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(builder: (context) => InfoPage()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
