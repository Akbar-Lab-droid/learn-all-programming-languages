// Temperature converter - Dart
double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;

void main() {
  print('25 C = ${celsiusToFahrenheit(25)} F');
  print('77 F = ${fahrenheitToCelsius(77)} C');
}
