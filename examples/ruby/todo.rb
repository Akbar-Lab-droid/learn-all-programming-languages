# To-do list - Ruby
tasks = ["Learn Ruby", "Build a project", "Push to GitHub"]

def show_tasks(tasks)
  puts "Your tasks:"
  tasks.each_with_index { |task, i| puts "  #{i + 1}. #{task}" }
end

tasks << "Read documentation"
show_tasks(tasks)
done = tasks.shift
puts "Done: #{done}"
show_tasks(tasks)
