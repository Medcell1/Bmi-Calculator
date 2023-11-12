import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Text('Your Result', style: kbigText),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 80, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: kactiveCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          resultText,
                          style: first,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiResult,
                        style: second,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        interpretation,
                        style: third,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Color(0xFFEB1555),
                width: double.maxFinite,
                height: 80,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
