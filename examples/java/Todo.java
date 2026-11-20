// To-do list - Java
import java.util.ArrayList;

public class Todo {
    public static void showTasks(ArrayList<String> tasks) {
        System.out.println("Your tasks:");
        for (int i = 0; i < tasks.size(); i++) {
            System.out.println("  " + (i + 1) + ". " + tasks.get(i));
        }
    }

    public static void main(String[] args) {
        ArrayList<String> tasks = new ArrayList<>();
        tasks.add("Learn Java");
        tasks.add("Build a project");
        tasks.add("Push to GitHub");
        tasks.add("Read documentation");
        showTasks(tasks);
        String done = tasks.remove(0);
        System.out.println("Done: " + done);
        showTasks(tasks);
    }
}
