import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class PlusMinus extends StatelessWidget {
  final String title;
  final int value;
  final Function(int) onPress;

  PlusMinus({
    @required this.title,
    @required this.value,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kLabelNumberStyle,
        ),
        SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundIconButton(
              icon: Icon(
                FontAwesomeIcons.minus,
                color: Color(0xff8d8e98),
              ),
              onPressed: () {
                onPress(value - 1);
              },
            ),
            RoundIconButton(
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Color(0xff8d8e98),
              ),
              onPressed: () {
                onPress(value + 1);
              },
            )
          ],
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final Icon icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 64.0,
        height: 64.0,
      ),
      fillColor: kActiveCardColor,
      onPressed: onPressed,
      shape: CircleBorder(),
      child: icon,
    );
  }
}
