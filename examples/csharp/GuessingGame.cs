// Number guessing game - C# (demo with fixed guesses)
using System;

class GuessingGame {
    static void Main() {
        int secret = 42;
        int[] guesses = { 10, 50, 42 };
        foreach (int guess in guesses) {
            if (guess < secret) Console.WriteLine(guess + " is too low!");
            else if (guess > secret) Console.WriteLine(guess + " is too high!");
            else {
                Console.WriteLine(guess + " is correct! You win!");
                break;
            }
        }
    }
}
