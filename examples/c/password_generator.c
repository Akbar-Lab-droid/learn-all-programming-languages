// Password generator - C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void generate_password(char *out, int length) {
    const char *chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    int n = strlen(chars);
    for (int i = 0; i < length; i++) {
        out[i] = chars[rand() % n];
    }
    out[length] = '\0';
}

int main(void) {
    srand(42);  // fixed seed so the demo is repeatable
    char password[17];
    for (int i = 1; i <= 3; i++) {
        generate_password(password, 12);
        printf("Password %d: %s\n", i, password);
    }
    return 0;
}
