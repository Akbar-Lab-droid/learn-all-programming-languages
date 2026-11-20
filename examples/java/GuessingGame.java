// Number guessing game - Java (demo with fixed guesses)
public class GuessingGame {
    public static void main(String[] args) {
        int secret = 42;
        int[] guesses = {10, 50, 42};
        for (int guess : guesses) {
            if (guess < secret) {
                System.out.println(guess + " is too low!");
            } else if (guess > secret) {
                System.out.println(guess + " is too high!");
            } else {
                System.out.println(guess + " is correct! You win!");
                break;
            }
        }
    }
}
