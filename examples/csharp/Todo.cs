// To-do list - C#
using System;
using System.Collections.Generic;

class Todo {
    static void ShowTasks(List<string> tasks) {
        Console.WriteLine("Your tasks:");
        for (int i = 0; i < tasks.Count; i++) {
            Console.WriteLine($"  {i + 1}. {tasks[i]}");
        }
    }

    static void Main() {
        var tasks = new List<string> { "Learn C#", "Build a project", "Push to GitHub" };
        tasks.Add("Read documentation");
        ShowTasks(tasks);
        string done = tasks[0];
        tasks.RemoveAt(0);
        Console.WriteLine("Done: " + done);
        ShowTasks(tasks);
    }
}
