// Password generator - Java
import java.util.Random;

public class PasswordGenerator {
    public static String generatePassword(int length) {
        String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
        Random random = new Random();
        StringBuilder password = new StringBuilder();
        for (int i = 0; i < length; i++) {
            password.append(chars.charAt(random.nextInt(chars.length())));
        }
        return password.toString();
    }

    public static void main(String[] args) {
        for (int i = 1; i <= 3; i++) {
            System.out.println("Password " + i + ": " + generatePassword(12));
        }
    }
}
