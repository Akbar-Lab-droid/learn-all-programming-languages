// To-do list - Rust
fn show_tasks(tasks: &Vec<String>) {
    println!("Your tasks:");
    for (i, task) in tasks.iter().enumerate() {
        println!("  {}. {}", i + 1, task);
    }
}

fn main() {
    let mut tasks: Vec<String> = vec![
        "Learn Rust".to_string(),
        "Build a project".to_string(),
        "Push to GitHub".to_string(),
    ];
    tasks.push("Read documentation".to_string());
    show_tasks(&tasks);
    let done = tasks.remove(0);
    println!("Done: {}", done);
    show_tasks(&tasks);
}
