<?php
// To-do list - PHP
$tasks = ["Learn PHP", "Build a project", "Push to GitHub"];

function showTasks($tasks) {
    echo "Your tasks:\n";
    foreach ($tasks as $i => $task) {
        echo "  " . ($i + 1) . ". $task\n";
    }
}

$tasks[] = "Read documentation";
showTasks($tasks);
$done = array_shift($tasks);
echo "Done: $done\n";
showTasks($tasks);
