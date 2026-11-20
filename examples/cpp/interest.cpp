// Simple & compound interest - C++
#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;

double simpleInterest(double principal, double rate, double years) {
    return principal * rate * years / 100;
}

double compoundInterest(double principal, double rate, double years) {
    return principal * pow(1 + rate / 100, years) - principal;
}

int main() {
    double p = 1000, r = 5, y = 3;
    cout << fixed << setprecision(2);
    cout << "Simple interest: $" << simpleInterest(p, r, y) << endl;
    cout << "Compound interest: $" << compoundInterest(p, r, y) << endl;
    return 0;
}
