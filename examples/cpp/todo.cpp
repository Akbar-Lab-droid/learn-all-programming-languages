// To-do list - C++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void showTasks(const vector<string> &tasks) {
    cout << "Your tasks:" << endl;
    for (size_t i = 0; i < tasks.size(); i++) {
        cout << "  " << i + 1 << ". " << tasks[i] << endl;
    }
}

int main() {
    vector<string> tasks = {"Learn C++", "Build a project", "Push to GitHub"};
    tasks.push_back("Read documentation");
    showTasks(tasks);
    cout << "Done: " << tasks[0] << endl;
    tasks.erase(tasks.begin());
    showTasks(tasks);
    return 0;
}
