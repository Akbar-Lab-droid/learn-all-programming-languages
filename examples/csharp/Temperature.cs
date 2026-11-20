// Temperature converter - C#
using System;

class Temperature {
    static double CelsiusToFahrenheit(double c) => c * 9 / 5 + 32;
    static double FahrenheitToCelsius(double f) => (f - 32) * 5 / 9;

    static void Main() {
        Console.WriteLine("25 C = " + CelsiusToFahrenheit(25) + " F");
        Console.WriteLine("77 F = " + FahrenheitToCelsius(77) + " C");
    }
}
