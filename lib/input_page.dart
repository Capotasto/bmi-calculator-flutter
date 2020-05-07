import 'package:bmi_calculator/PlusMinus.dart';
import 'package:bmi_calculator/result/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'gender.dart';
import 'gender_widget.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Male;
  int height = 180;
  int weight = 65;
  int age = 20;

  void updateSelectedGenderState(Gender selectedGender) {
    setState(() {
      this.selectedGender = selectedGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    isSelected: selectedGender == Gender.Male,
                    cardChild: GenderWidget(
                      gender: Gender.Male,
                    ),
                    onPress: () {
                      updateSelectedGenderState(Gender.Male);
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateSelectedGenderState(Gender.Female);
                    },
                    child: ReusableCard(
                      isSelected: selectedGender == Gender.Female,
                      cardChild: GenderWidget(
                        gender: Gender.Female,
                      ),
                      onPress: () {
                        updateSelectedGenderState(Gender.Female);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              isSelected: true,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kLabelNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTickMarkColor: Color(0xff8d8e98),
                      thumbColor: Color(0xffeb1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayColor: Color(0x29eb1555),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 130.0,
                      max: 210.0,
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    isSelected: false,
                    cardChild: PlusMinus(
                      title: 'WEIGHT',
                      value: weight,
                      onPress: (value) {
                        setState(() {
                          weight = value;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    isSelected: false,
                    cardChild: PlusMinus(
                      title: 'AGE',
                      value: age,
                      onPress: (value) {
                        setState(() {
                          age = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            btnText: 'CALCULATE!!',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
