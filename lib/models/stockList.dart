import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stocksu/models/stock_row.dart';
import '../pages/InfoPage.dart';
import '../pages/main.dart';
import '../pages/main.dart';
import 'stock.dart';

class StockList extends StatelessWidget {
  final List<StockRow> stocks;

   List<StockRow> getAll() {
    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.red,
          change: "67.89%",
          isBought: true,
          name: "TSL",
          isUp: true,
          price: "678.64",
          imageName: "images/tesla.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.red,
          change: "056.78%",
          isBought: true,
          name: "FCB",
          isUp: true,
          price: "56.89",
          imageName: "images/facebook.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.red,
          change: "88.89%",
          isBought: true,
          name: "APL",
          isUp: true,
          price: "567.90",
          imageName: "images/apple.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.green,
          change: "22.21%",
          isBought: true,
          name: "GGL",
          isUp: true,
          price: "566.67",
          imageName: "images/google.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.green,
          change: "44.40%",
          isBought: true,
          name: "MCF",
          isUp: true,
          price: "566.67",
          imageName: "images/microsoft.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.green,
          change: "44.40%",
          isBought: true,
          name: "MCF",
          isUp: true,
          price: "566.67",
          imageName: "images/microsoft.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.green,
          change: "44.40%",
          isBought: true,
          name: "MCF",
          isUp: true,
          price: "566.67",
          imageName: "images/microsoft.png"),
    );

    stocks.add(
      StockRow(
          icon: Icons.arrow_downward,
          tcolor: Colors.green,
          change: "44.40%",
          isBought: true,
          name: "MCF",
          isUp: true,
          price: "566.67",
          imageName: "images/microsoft.png"),
    );

    return stocks;
  }

  StockList({required this.stocks});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.deepPurpleAccent,
          );
        },
        itemBuilder: (context, index) {
          return Text('s');
        },
        itemCount: stocks.length);
  }
}
