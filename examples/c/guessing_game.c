// Number guessing game - C (demo with fixed guesses)
#include <stdio.h>

int main(void) {
    int secret = 42;
    int guesses[] = {10, 50, 42};
    for (int i = 0; i < 3; i++) {
        int guess = guesses[i];
        if (guess < secret) {
            printf("%d is too low!\n", guess);
        } else if (guess > secret) {
            printf("%d is too high!\n", guess);
        } else {
            printf("%d is correct! You win!\n", guess);
            break;
        }
    }
    return 0;
}
