// String tools - C#
using System;
using System.Linq;

class StringTools {
    static string Reverse(string text) =>
        new string(text.Reverse().ToArray());

    static int CountVowels(string text) =>
        text.ToLower().Count(ch => "aeiou".Contains(ch));

    static bool IsPalindrome(string text) {
        string clean = new string(text.ToLower().Where(char.IsLetterOrDigit).ToArray());
        return clean == Reverse(clean);
    }

    static void Main() {
        string word = "level";
        Console.WriteLine($"Reverse of '{word}': {Reverse(word)}");
        Console.WriteLine($"Vowels in 'Hello World': {CountVowels("Hello World")}");
        Console.WriteLine($"Is '{word}' a palindrome? {IsPalindrome(word)}");
    }
}
