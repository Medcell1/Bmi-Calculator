import 'package:flutter/material.dart';

import 'constants.dart';

class InsideCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const InsideCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
