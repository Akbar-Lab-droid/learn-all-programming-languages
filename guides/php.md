# PHP — Complete Mini-Course

## 1. What Is PHP?
PHP powers a huge share of the web — WordPress, Laravel, Facebook's early days. It is the fastest way to build a dynamic website.

## 2. Hello World
```php
<?php
echo "Hello, World!";
```

## 3. Variables & Data Types
```php
<?php
$name = "Akbar";   // $ prefix, always
$age = 20;
$height = 1.75;
$isStudent = true;
$skills = ["PHP", "Git"];  // array
```

## 4. Operators
```php
<?php
echo 10 + 3;  // 13
echo 10 % 3;  // 1
echo "Hello " . "World";  // string concat uses a DOT: "Hello World"
```

## 5. Conditionals
```php
<?php
$score = 85;
if ($score >= 90) {
    echo "A";
} elseif ($score >= 75) {
    echo "B";
} else {
    echo "C";
}
```

## 6. Loops
```php
<?php
for ($i = 0; $i < 5; $i++) {
    echo $i;
}

foreach (["apple", "banana"] as $fruit) {
    echo $fruit;
}
```

## 7. Functions
```php
<?php
function add($a, $b) {
    return $a + $b;
}
echo add(2, 3);  // 5
```

## 8. Forms (Getting User Input)
```php
<?php
// form.html sends POST to this file
$name = $_POST["name"] ?? "guest";
echo "Hello, " . htmlspecialchars($name);
```

## 9. Working with MySQL (PDO)
```php
<?php
$pdo = new PDO("mysql:host=localhost;dbname=school", "root", "");
$stmt = $pdo->query("SELECT * FROM students");
foreach ($stmt as $row) {
    echo $row["name"];
}
```

## 10. Common Mistakes
- Forgetting the `$` on variables
- Using `+` to join strings (use `.` instead)
- Not escaping user input (`htmlspecialchars`) — XSS risk
- `==` vs `===` (loose vs strict comparison)

## 11. Practice Exercises
1. A blog with login (sessions) and posts stored in MySQL.
2. A simple online store: products, cart, checkout page.
3. An attendance system with a form and a database.

## 12. String Manipulation
```php
<?php
$text = "  Hello, World!  ";
echo trim($text) . "\n";
echo strtolower($text) . "\n";
echo str_replace("World", "PHP", $text) . "\n";
echo substr($text, 2, 5) . "\n";  // Hello
print_r(explode(",", "a,b,c"));
```

## 13. File Handling
```php
<?php
file_put_contents("notes.txt", "Hello, file!\n");
echo file_get_contents("notes.txt");
foreach (file("notes.txt") as $line) echo $line;
```

## 14. Error Handling
```php
<?php
try {
    $pdo = new PDO("mysql:host=localhost;dbname=missing", "root", "");
} catch (PDOException $e) {
    echo "Database error: " . $e->getMessage() . "\n";
}
```

## 15. Mini-Project: Guestbook
A form where visitors leave their name and a message, stored in a file (or MySQL). The page lists all entries, newest first, with `htmlspecialchars` on output so nobody can inject HTML.

## 16. More Exercises & Interview Questions
**Exercises:**
4. A login system with sessions.
5. A program that uploads and lists images.
6. A simple blog with MySQL: create, list, delete posts.
7. A contact form that sends an email.
8. A URL shortener with a database.

**Interview questions:**
- What is the difference between `==` and `===`?
- What are sessions and cookies?
- What is SQL injection and how do you prevent it?
- What is Composer?
- What is the difference between `include` and `require`?

## 17. Next Steps
- Official manual: https://www.php.net/manual/en/
- Laravel docs: https://laravel.com/docs
- Code examples in this repo: [`examples/php/`](../examples/php/)
