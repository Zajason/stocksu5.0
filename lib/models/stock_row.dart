import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../pages/InfoPage.dart';
import '../pages/main.dart';
import '../pages/main.dart';
import 'stock.dart';

class StockRow extends StatefulWidget {
  final String price;
  final String name;
  final String imageName;
  final bool isBought;
  final bool isUp;
  final String change;
  final Color tcolor;
  final IconData icon;

  StockRow(
      {required this.icon,
      required this.name,
      required this.tcolor,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: MediaQuery.of(context).size.width / 40),
            Image(
              image: AssetImage(widget.imageName),
              width: MediaQuery.of(context).size.width / 15,
              height: MediaQuery.of(context).size.height / 16,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(
                widget.name,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
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
              style: TextStyle(color: widget.tcolor),
            ),
            Icon(
              widget.icon,
              color: widget.tcolor,
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4.5,
              height: MediaQuery.of(context).size.height / 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: FlatButton(
                  color: Colors.deepPurpleAccent,
                  child: Text('BUY'),
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => InfoPage(
                                name: widget.name,
                                tcolor: widget.tcolor,
                                imageName: widget.imageName,
                                change: widget.change,
                                isBought: widget.isBought,
                                icon: widget.icon,
                                isUp: widget.isUp,
                                price: widget.price,
                              )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
