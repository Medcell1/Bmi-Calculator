import 'package:bmi_calculator/results.dart';
import 'package:bmi_calculator/utils/Result_text.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:bmi_calculator/utils/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'utils/downicon.dart';
import 'utils/icon_content.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({
    Key? key,
  }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  Gender? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFFBA2263),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: () => setState(() {
                      gender = Gender.male;
                    }),
                    colour: gender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: InsideCard(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () => setState(() {
                      gender = Gender.female;
                    }),
                    colour: gender == Gender.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: InsideCard(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    // textBaseline: TextBaseline.alphabetic,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 125, top: 7),
                        child: Text(
                          kheight.toString(),
                          style: kMidLabelTextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text('cm'),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFBA2263),
                      thumbColor: Color(0xFFBA2263),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 35),
                    ),
                    child: Slider(
                      value: kheight.toDouble(),
                      min: 120,
                      max: 220,
                      // activeColor: Color(0xFFBA2263),
                      inactiveColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          kheight = value.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              colour: kactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabelTextStyle,
                        ),
                        Text(
                          kNumber1.toString(),
                          style: kMidLabelTextStyle,
                        ),
                        DownIcon(
                          function2: () => setState(() {
                            kNumber1--;
                          }),
                          function1: () => setState(() {
                            kNumber1++;
                          }),
                        ),
                      ],
                    ),
                    colour: kactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: klabelTextStyle,
                        ),
                        Text(
                          kNumber2.toString(),
                          style: kMidLabelTextStyle,
                        ),
                        DownIcon(
                          function2: () => setState(() {
                            kNumber2--;
                          }),
                          function1: () => setState(() {
                            kNumber2++;
                          }),
                        )
                      ],
                    ),
                    colour: kactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(kheight, kNumber1, 0);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation());
                  },
                ),
              );
            },
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 60,
              child: Center(
                child: Text(
                  'CALCULATE',
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
    );
  }
}
