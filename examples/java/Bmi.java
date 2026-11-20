// BMI calculator - Java
public class Bmi {
    public static double bmi(double weightKg, double heightM) {
        return weightKg / (heightM * heightM);
    }

    public static String category(double value) {
        if (value < 18.5) return "Underweight";
        if (value < 25) return "Normal";
        if (value < 30) return "Overweight";
        return "Obese";
    }

    public static void main(String[] args) {
        double[][] people = {{70, 1.75}, {85, 1.70}, {50, 1.60}};
        String[] names = {"Akbar", "Budi", "Citra"};
        for (int i = 0; i < people.length; i++) {
            double value = bmi(people[i][0], people[i][1]);
            System.out.printf("%s: BMI %.1f - %s%n", names[i], value, category(value));
        }
    }
}
