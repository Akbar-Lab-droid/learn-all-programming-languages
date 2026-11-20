// To-do list - Go
package main

import "fmt"

func showTasks(tasks []string) {
	fmt.Println("Your tasks:")
	for i, task := range tasks {
		fmt.Printf("  %d. %s\n", i+1, task)
	}
}

func main() {
	tasks := []string{"Learn Go", "Build a project", "Push to GitHub"}
	tasks = append(tasks, "Read documentation")
	showTasks(tasks)
	done := tasks[0]
	tasks = tasks[1:]
	fmt.Println("Done:", done)
	showTasks(tasks)
}
