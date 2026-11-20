// Password generator - C++
#include <iostream>
#include <random>
#include <string>
using namespace std;

string generatePassword(int length) {
    const string chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    mt19937 rng(42);  // fixed seed so the demo is repeatable
    uniform_int_distribution<int> dist(0, chars.size() - 1);
    string password;
    for (int i = 0; i < length; i++) password += chars[dist(rng)];
    return password;
}

int main() {
    for (int i = 1; i <= 3; i++) {
        cout << "Password " << i << ": " << generatePassword(12) << endl;
    }
    return 0;
}
