// BMI calculator - C
#include <stdio.h>

double bmi(double weight_kg, double height_m) {
    return weight_kg / (height_m * height_m);
}

const char *category(double value) {
    if (value < 18.5) return "Underweight";
    if (value < 25) return "Normal";
    if (value < 30) return "Overweight";
    return "Obese";
}

int main(void) {
    char *names[] = {"Akbar", "Budi", "Citra"};
    double data[][2] = {{70, 1.75}, {85, 1.70}, {50, 1.60}};
    for (int i = 0; i < 3; i++) {
        double value = bmi(data[i][0], data[i][1]);
        printf("%s: BMI %.1f - %s\n", names[i], value, category(value));
    }
    return 0;
}
