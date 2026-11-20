// Temperature converter - C++
#include <iostream>
using namespace std;

double celsiusToFahrenheit(double c) { return c * 9 / 5 + 32; }
double fahrenheitToCelsius(double f) { return (f - 32) * 5 / 9; }

int main() {
    cout << "25 C = " << celsiusToFahrenheit(25) << " F" << endl;
    cout << "77 F = " << fahrenheitToCelsius(77) << " C" << endl;
    return 0;
}
