// String tools - Java
public class StringTools {
    public static String reverse(String text) {
        return new StringBuilder(text).reverse().toString();
    }

    public static int countVowels(String text) {
        int count = 0;
        for (char ch : text.toLowerCase().toCharArray()) {
            if ("aeiou".indexOf(ch) >= 0) count++;
        }
        return count;
    }

    public static boolean isPalindrome(String text) {
        String clean = text.toLowerCase().replaceAll("[^a-z0-9]", "");
        return clean.equals(reverse(clean));
    }

    public static void main(String[] args) {
        String word = "level";
        System.out.println("Reverse of '" + word + "': " + reverse(word));
        System.out.println("Vowels in 'Hello World': " + countVowels("Hello World"));
        System.out.println("Is '" + word + "' a palindrome? " + isPalindrome(word));
    }
}
