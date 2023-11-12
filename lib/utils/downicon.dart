import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownIcon extends StatelessWidget {
  dynamic function1;
  dynamic function2;
  DownIcon({Key? key, this.function1, this.function2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: function1,
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF111328),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: function2,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF111328),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              FontAwesomeIcons.minus,
              color: Colors.white,
              size: 40,
            ),
          ),
        )
      ],
    );
  }
}
