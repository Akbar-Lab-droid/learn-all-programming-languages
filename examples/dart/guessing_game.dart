// Number guessing game - Dart (demo with fixed guesses)
void main() {
  var secret = 42;
  var guesses = [10, 50, 42];
  for (var guess in guesses) {
    if (guess < secret) {
      print('$guess is too low!');
    } else if (guess > secret) {
      print('$guess is too high!');
    } else {
      print('$guess is correct! You win!');
      break;
    }
  }
}
