// BMI calculator - Dart
double bmi(double weightKg, double heightM) =>
    weightKg / (heightM * heightM);

String category(double value) {
  if (value < 18.5) return 'Underweight';
  if (value < 25) return 'Normal';
  if (value < 30) return 'Overweight';
  return 'Obese';
}

void main() {
  var people = [
    ('Akbar', 70.0, 1.75),
    ('Budi', 85.0, 1.70),
    ('Citra', 50.0, 1.60),
  ];
  for (var (name, w, h) in people) {
    var value = bmi(w, h);
    print('$name: BMI ${value.toStringAsFixed(1)} - ${category(value)}');
  }
}
