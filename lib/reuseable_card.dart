import 'package:flutter/material.dart';


class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.clr, this.cardIcon});
  final Color clr;
  final cardIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardIcon,
      margin: EdgeInsets.all(15.0),
      decoration:
      BoxDecoration(color: clr, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}