# To-do list - R
tasks <- c("Learn R", "Build a project", "Push to GitHub")

show_tasks <- function(tasks) {
  print("Your tasks:")
  for (i in seq_along(tasks)) {
    print(paste(" ", i, ". ", tasks[i], sep = ""))
  }
}

tasks <- c(tasks, "Read documentation")
show_tasks(tasks)
done <- tasks[1]
tasks <- tasks[-1]
print(paste("Done:", done))
show_tasks(tasks)
