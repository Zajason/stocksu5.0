import 'package:flutter/material.dart';
import '../pages/main.dart';

class Stock extends StatelessWidget {
  final String price;
  final String name;
  final String imageName;
  final bool isBought;
  final bool isUp;
  final String change;
  final Color tcolor;
  final IconData icon;

  Stock(
      {required this.icon,
      required this.name,
      required this.tcolor,
      required this.change,
      required this.isBought,
      required this.isUp,
      required this.price,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
