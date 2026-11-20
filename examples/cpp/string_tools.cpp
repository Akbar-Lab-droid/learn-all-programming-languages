// String tools - C++
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

string reverseStr(string text) {
    reverse(text.begin(), text.end());
    return text;
}

int countVowels(const string &text) {
    int count = 0;
    for (char ch : text) {
        char lower = tolower(ch);
        if (lower == 'a' || lower == 'e' || lower == 'i' || lower == 'o' || lower == 'u') count++;
    }
    return count;
}

bool isPalindrome(string text) {
    string clean;
    for (char ch : text) {
        if (isalnum(ch)) clean += tolower(ch);
    }
    string rev = clean;
    reverse(rev.begin(), rev.end());
    return clean == rev;
}

int main() {
    string word = "level";
    cout << "Reverse of '" << word << "': " << reverseStr(word) << endl;
    cout << "Vowels in 'Hello World': " << countVowels("Hello World") << endl;
    cout << "Is '" << word << "' a palindrome? " << (isPalindrome(word) ? "yes" : "no") << endl;
    return 0;
}
