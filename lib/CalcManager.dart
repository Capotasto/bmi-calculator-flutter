import 'dart:math';

class CalcManager {
  final int height;
  final int weight;

  double _bmi;

  CalcManager({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (25 <= _bmi) {
      return 'Overweight';
    } else if (18.5 <= _bmi) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (25 <= _bmi) {
      return 'You should start doing some exicize!';
    } else if (18.5 <= _bmi) {
      return 'Well done! Good job!';
    } else {
      return 'Eat more!';
    }
  }
}
