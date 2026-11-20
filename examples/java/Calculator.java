// Simple calculator - Java
public class Calculator {
    public static int add(int a, int b) {
        return a + b;
    }

    public static double divide(double a, double b) {
        if (b == 0) {
            throw new IllegalArgumentException("Cannot divide by zero!");
        }
        return a / b;
    }

    public static void main(String[] args) {
        System.out.println("10 + 5 = " + add(10, 5));
        System.out.println("10 / 5 = " + divide(10, 5));
    }
}
