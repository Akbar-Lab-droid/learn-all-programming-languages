// Simple & compound interest - Dart
import 'dart:math';

double simpleInterest(double principal, double rate, double years) =>
    principal * rate * years / 100;

double compoundInterest(double principal, double rate, double years) =>
    principal * pow(1 + rate / 100, years) - principal;

void main() {
  var p = 1000.0, r = 5.0, y = 3.0;
  print('Simple interest: \$${simpleInterest(p, r, y).toStringAsFixed(2)}');
  print('Compound interest: \$${compoundInterest(p, r, y).toStringAsFixed(2)}');
}
