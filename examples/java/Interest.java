// Simple & compound interest - Java
public class Interest {
    public static double simpleInterest(double principal, double rate, double years) {
        return principal * rate * years / 100;
    }

    public static double compoundInterest(double principal, double rate, double years) {
        return principal * Math.pow(1 + rate / 100, years) - principal;
    }

    public static void main(String[] args) {
        double p = 1000, r = 5, y = 3;
        System.out.printf("Simple interest: $%.2f%n", simpleInterest(p, r, y));
        System.out.printf("Compound interest: $%.2f%n", compoundInterest(p, r, y));
    }
}
