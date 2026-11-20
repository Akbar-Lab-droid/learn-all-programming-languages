// Simple & compound interest - C#
using System;

class Interest {
    static double SimpleInterest(double principal, double rate, double years) =>
        principal * rate * years / 100;

    static double CompoundInterest(double principal, double rate, double years) =>
        principal * Math.Pow(1 + rate / 100, years) - principal;

    static void Main() {
        double p = 1000, r = 5, y = 3;
        Console.WriteLine($"Simple interest: ${SimpleInterest(p, r, y):F2}");
        Console.WriteLine($"Compound interest: ${CompoundInterest(p, r, y):F2}");
    }
}
