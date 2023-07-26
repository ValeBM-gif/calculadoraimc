import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Color borderColour;
  final Widget cardChild;

  ReusableCard(
      {required this.colour,
      required this.cardChild,
      required this.borderColour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
          border: Border.all(color: borderColour, width: 4)),
    );
  }
}
