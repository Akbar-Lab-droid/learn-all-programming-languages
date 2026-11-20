// BMI calculator - C++
#include <iostream>
#include <iomanip>
using namespace std;

double bmi(double weightKg, double heightM) {
    return weightKg / (heightM * heightM);
}

string category(double value) {
    if (value < 18.5) return "Underweight";
    if (value < 25) return "Normal";
    if (value < 30) return "Overweight";
    return "Obese";
}

int main() {
    string names[] = {"Akbar", "Budi", "Citra"};
    double data[][2] = {{70, 1.75}, {85, 1.70}, {50, 1.60}};
    for (int i = 0; i < 3; i++) {
        double value = bmi(data[i][0], data[i][1]);
        cout << names[i] << ": BMI " << fixed << setprecision(1) << value
             << " - " << category(value) << endl;
    }
    return 0;
}
