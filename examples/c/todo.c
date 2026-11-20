// To-do list - C
#include <stdio.h>
#include <string.h>

int main(void) {
    char tasks[4][50] = {"Learn C", "Build a project", "Push to GitHub", "Read documentation"};
    int count = 4;

    printf("Your tasks:\n");
    for (int i = 0; i < count; i++) {
        printf("  %d. %s\n", i + 1, tasks[i]);
    }
    printf("Done: %s\n", tasks[0]);
    printf("Remaining tasks:\n");
    for (int i = 1; i < count; i++) {
        printf("  %d. %s\n", i, tasks[i]);
    }
    return 0;
}
