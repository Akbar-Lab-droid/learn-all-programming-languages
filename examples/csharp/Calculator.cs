// Simple calculator - C#
using System;

class Calculator {
    static int Add(int a, int b) => a + b;

    static double Divide(double a, double b) {
        if (b == 0) throw new ArgumentException("Cannot divide by zero!");
        return a / b;
    }

    static void Main() {
        Console.WriteLine("10 + 5 = " + Add(10, 5));
        Console.WriteLine("10 / 5 = " + Divide(10, 5));
    }
}
