import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String _resultText;
    if (_bmi > 25) {
      _resultText = '太っている';
    } else if (_bmi > 18.5) {
      _resultText = '普通';
    } else {
      _resultText = '痩せている';
    }
    return _resultText;
  }

  String getInterpretation() {
    String _interpretation;
    if (_bmi > 25) {
      _interpretation = '肥満気味です。ダイエットしましょう。';
    } else if (_bmi > 18.5) {
      _interpretation = '通常体型です。その調子。';
    } else {
      _interpretation = '痩せています。もっと食べましょう。';
    }
    return _interpretation;
  }
}
