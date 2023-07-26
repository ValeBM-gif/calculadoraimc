import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getTextResult() {
    if (_bmi >= 25) {
      return 'SOBREPESO';
    } else if (_bmi > 18.5) {
      return 'PESO NORMAL';
    } else {
      return 'PESO BAJO';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tienes un peso por encima del normal.';
    } else if (_bmi > 18.5) {
      return 'Tienes un peso normal. ¡Buen trabajo!';
    } else {
      return 'Tienes un peso por debajo del normal.';
    }
  }
}
