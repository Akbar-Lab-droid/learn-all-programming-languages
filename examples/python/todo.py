# To-do list - Python
tasks = ["Learn Python", "Build a project", "Push to GitHub"]

def show_tasks():
    print("Your tasks:")
    for i, task in enumerate(tasks, 1):
        print(f"  {i}. {task}")

tasks.append("Read documentation")
show_tasks()
done = tasks.pop(0)
print(f"Done: {done}")
show_tasks()
