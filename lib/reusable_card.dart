import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final bool isSelected;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.isSelected, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isSelected ? kActiveCardColor : kInactiveCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
