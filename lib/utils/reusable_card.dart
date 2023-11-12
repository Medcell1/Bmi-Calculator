import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final dynamic colour;
  final dynamic cardChild;
  final onPressed;
  const ReusableCard({Key? key, this.colour, this.cardChild, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
