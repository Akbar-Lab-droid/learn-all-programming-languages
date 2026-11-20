// Password generator - C#
using System;

class PasswordGenerator {
    static string GeneratePassword(int length) {
        const string chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
        Random random = new Random(42);  // fixed seed so the demo is repeatable
        char[] password = new char[length];
        for (int i = 0; i < length; i++) {
            password[i] = chars[random.Next(chars.Length)];
        }
        return new string(password);
    }

    static void Main() {
        for (int i = 1; i <= 3; i++) {
            Console.WriteLine("Password " + i + ": " + GeneratePassword(12));
        }
    }
}
