// To-do list - JavaScript
const tasks = ["Learn JavaScript", "Build a project", "Push to GitHub"];
function showTasks() {
  console.log("Your tasks:");
  tasks.forEach((task, i) => console.log(`  ${i + 1}. ${task}`));
}
tasks.push("Read documentation");
showTasks();
const done = tasks.shift();
console.log(`Done: ${done}`);
showTasks();
