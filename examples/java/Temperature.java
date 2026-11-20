// Temperature converter - Java
public class Temperature {
    public static double celsiusToFahrenheit(double c) {
        return c * 9 / 5 + 32;
    }

    public static double fahrenheitToCelsius(double f) {
        return (f - 32) * 5 / 9;
    }

    public static void main(String[] args) {
        System.out.println("25 C = " + celsiusToFahrenheit(25) + " F");
        System.out.println("77 F = " + fahrenheitToCelsius(77) + " C");
    }
}
