// Password generator - Dart
import 'dart:math';

String generatePassword([int length = 12]) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*';
  var random = Random(42); // fixed seed so the demo is repeatable
  return List.generate(length, (_) => chars[random.nextInt(chars.length)])
      .join();
}

void main() {
  for (var i = 1; i <= 3; i++) {
    print('Password $i: ${generatePassword()}');
  }
}
