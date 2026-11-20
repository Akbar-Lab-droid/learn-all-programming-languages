// Number guessing game - C++ (demo with fixed guesses)
#include <iostream>
using namespace std;

int main() {
    int secret = 42;
    int guesses[] = {10, 50, 42};
    for (int guess : guesses) {
        if (guess < secret) cout << guess << " is too low!" << endl;
        else if (guess > secret) cout << guess << " is too high!" << endl;
        else {
            cout << guess << " is correct! You win!" << endl;
            break;
        }
    }
    return 0;
}
