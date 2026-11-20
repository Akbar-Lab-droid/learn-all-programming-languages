# Dart & Flutter — Complete Mini-Course

## 1. What Are Dart & Flutter?
Dart is the language, Flutter is the framework. Together they build apps for Android, iOS, web, and desktop from ONE codebase.

## 2. Hello World
```dart
void main() {
  print('Hello, World!');
}
```

## 3. Variables
```dart
var name = 'Akbar';      // inferred type
String major = 'Informatics';
int age = 20;
double height = 1.75;
bool isStudent = true;
final pi = 3.14;         // set once, never changes
```

## 4. Operators
```dart
print(10 + 3);  // 13
print(10 / 3);  // 3.333...
print(10 ~/ 3); // 3 (integer division)
print(10 % 3);  // 1
```

## 5. Conditionals
```dart
var score = 85;
if (score >= 90) {
  print('A');
} else if (score >= 75) {
  print('B');
} else {
  print('C');
}
```

## 6. Loops
```dart
for (var i = 1; i <= 5; i++) {
  print(i);
}

var fruits = ['apple', 'banana'];
for (var fruit in fruits) {
  print(fruit);
}
```

## 7. Functions
```dart
String greet(String name) {
  return 'Hello, $name!';
}
print(greet('Akbar'));
```

## 8. Lists & Maps
```dart
var fruits = ['apple', 'banana'];
fruits.add('mango');

var ages = {'Akbar': 20, 'Budi': 21};
print(ages['Akbar']);  // 20
```

## 9. Null Safety
```dart
String? nickname;              // nullable
print(nickname?.length);       // safe call
print(nickname ?? 'Guest');    // default when null
```

## 10. Your First Flutter Widget
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Hello, Flutter!')),
      ),
    );
  }
}
```

## 11. Common Mistakes
- Forgetting `;` at the end of statements
- `~/` for integer division (not `/`)
- Using `var` where a specific type would be clearer
- Not handling nulls (Dart is null-safe — respect it)

## 12. Practice Exercises
1. A cashier app with a product list and total.
2. A weather app using an HTTP package.
3. A chat app UI with a message list.

## 13. String Manipulation
```dart
var text = '  Hello, World!  ';
print(text.trim());
print(text.toLowerCase());
print(text.replaceAll('World', 'Dart'));
print('a,b,c'.split(','));
print('Dart'.startsWith('Da'));
```

## 14. File Handling
```dart
import 'dart:io';
void main() async {
  var file = File('notes.txt');
  await file.writeAsString('Hello, file!\n');
  print(await file.readAsString());
}
```

## 15. Error Handling
```dart
try {
  var n = int.parse('abc');
} catch (e) {
  print('Not a number: $e');
} finally {
  print('This always runs.');
}
```

## 16. Mini-Project: Notes App
A Flutter list of notes with add and delete. Store notes in a list of objects, and persist them with shared_preferences so they survive app restarts.

## 17. More Exercises & Interview Questions
**Exercises:**
4. A tip calculator app.
5. A weather app with the http package.
6. A flashcard app.
7. A stopwatch app.
8. A to-do app with local storage.

**Interview questions:**
- What is null safety?
- What is the difference between `final` and `const`?
- What is a widget? Stateless vs Stateful?
- What is a Future?
- What is the difference between a List and a Map?

## 18. Next Steps
- Codelabs: https://docs.flutter.dev/codelabs
- Language tour: https://dart.dev/language
- Code examples in this repo: [`examples/dart/`](../examples/dart/)
