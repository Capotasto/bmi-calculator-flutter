import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'NORMAL',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
        Text(
          '22.1',
          style: TextStyle(
            fontSize: 109.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'Normal BMI range:',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white30,
          ),
        ),
        Text(
          '18,5 - 25 kg/m2',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'You have a normal body\nweight. Good job!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Container(
          height: 60.0,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 36.0),
          child: Center(
            child: Text(
              'SAVE RESULT',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          decoration: BoxDecoration(
            color: kInactiveCardColor,
          ),
        ),
      ],
    );
  }
}
