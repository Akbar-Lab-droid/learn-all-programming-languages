// To-do list - Dart
void showTasks(List<String> tasks) {
  print('Your tasks:');
  for (var i = 0; i < tasks.length; i++) {
    print('  ${i + 1}. ${tasks[i]}');
  }
}

void main() {
  var tasks = ['Learn Dart', 'Build a project', 'Push to GitHub'];
  tasks.add('Read documentation');
  showTasks(tasks);
  var done = tasks.removeAt(0);
  print('Done: $done');
  showTasks(tasks);
}
