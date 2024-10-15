import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({required this.height, required this.weight});

  final int weight;
  final int height;
  late double _bmi;

  String bmicalculation() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double get_bmi_result() {
    return _bmi;
  }
}
