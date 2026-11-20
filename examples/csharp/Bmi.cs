// BMI calculator - C#
using System;

class Bmi {
    static double BmiValue(double weightKg, double heightM) =>
        weightKg / (heightM * heightM);

    static string Category(double value) {
        if (value < 18.5) return "Underweight";
        if (value < 25) return "Normal";
        if (value < 30) return "Overweight";
        return "Obese";
    }

    static void Main() {
        string[] names = { "Akbar", "Budi", "Citra" };
        double[,] data = { { 70, 1.75 }, { 85, 1.70 }, { 50, 1.60 } };
        for (int i = 0; i < 3; i++) {
            double value = BmiValue(data[i, 0], data[i, 1]);
            Console.WriteLine($"{names[i]}: BMI {value:F1} - {Category(value)}");
        }
    }
}
