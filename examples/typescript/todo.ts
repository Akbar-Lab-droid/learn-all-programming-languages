// To-do list - TypeScript
const tasks: string[] = ["Learn TypeScript", "Build a project", "Push to GitHub"];
function showTasks(): void {
  console.log("Your tasks:");
  tasks.forEach((task, i) => console.log(`  ${i + 1}. ${task}`));
}
tasks.push("Read documentation");
showTasks();
const done: string | undefined = tasks.shift();
console.log(`Done: ${done}`);
showTasks();
