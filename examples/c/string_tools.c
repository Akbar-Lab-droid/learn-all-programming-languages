// String tools - C
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void reverse(char *text) {
    int len = strlen(text);
    for (int i = 0; i < len / 2; i++) {
        char tmp = text[i];
        text[i] = text[len - 1 - i];
        text[len - 1 - i] = tmp;
    }
}

int count_vowels(const char *text) {
    int count = 0;
    for (int i = 0; text[i]; i++) {
        char ch = tolower((unsigned char)text[i]);
        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') count++;
    }
    return count;
}

int main(void) {
    char word[] = "level";
    reverse(word);
    printf("Reverse of 'level': %s\n", word);
    printf("Vowels in 'Hello World': %d\n", count_vowels("Hello World"));
    return 0;
}
