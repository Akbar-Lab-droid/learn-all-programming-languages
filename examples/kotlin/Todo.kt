// To-do list - Kotlin
fun showTasks(tasks: List<String>) {
    println("Your tasks:")
    tasks.forEachIndexed { i, task -> println("  ${i + 1}. $task") }
}

fun main() {
    val tasks = mutableListOf("Learn Kotlin", "Build a project", "Push to GitHub")
    tasks.add("Read documentation")
    showTasks(tasks)
    val done = tasks.removeAt(0)
    println("Done: $done")
    showTasks(tasks)
}
