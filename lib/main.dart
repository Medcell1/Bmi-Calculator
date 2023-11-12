import 'package:flutter/material.dart';

import 'input_head.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Colors.white),
      //   ),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // colorScheme: ColorScheme.fromSwatch()
      //     .copyWith(secondary: Colors.purple.shade800),
      // primaryColor: Color(0xFF0A0E21),
      // colorScheme:
      //     ColorScheme.fromSwatch().copyWith(secondary: Colors.blue.shade900),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF54085E),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),

      home: InputPage(),
    );
  }
}
