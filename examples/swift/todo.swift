// To-do list - Swift
var tasks = ["Learn Swift", "Build a project", "Push to GitHub"]

func showTasks() {
    print("Your tasks:")
    for (i, task) in tasks.enumerated() {
        print("  \(i + 1). \(task)")
    }
}

tasks.append("Read documentation")
showTasks()
let done = tasks.removeFirst()
print("Done: \(done)")
showTasks()
