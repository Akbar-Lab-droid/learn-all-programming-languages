// String tools - Dart
String reverseText(String text) => text.split('').reversed.join();

int countVowels(String text) =>
    text.toLowerCase().split('').where((c) => 'aeiou'.contains(c)).length;

bool isPalindrome(String text) {
  var clean = text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  return clean == clean.split('').reversed.join();
}

void main() {
  var word = 'level';
  print("Reverse of '$word': ${reverseText(word)}");
  print("Vowels in 'Hello World': ${countVowels('Hello World')}");
  print("Is '$word' a palindrome? ${isPalindrome(word)}");
}
