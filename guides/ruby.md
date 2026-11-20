# Ruby — Complete Mini-Course

## 1. What Is Ruby?
Ruby is famous for the most human-readable syntax of any language. It powers web apps through Ruby on Rails and is a joy to write.

## 2. Hello World
```ruby
puts "Hello, World!"
```

## 3. Variables & Data Types
```ruby
name = "Akbar"
age = 20
height = 1.75
is_student = true
skills = ["Ruby", "Git"]              # array
profile = { name: "Akbar", age: 20 }  # hash
```

## 4. Operators
```ruby
puts 10 + 3   # 13
puts 10 / 3   # 3 (integer division)
puts 10.0 / 3 # 3.333...
puts 10 % 3   # 1
puts "Hello " + "World"  # "Hello World"
```

## 5. Conditionals
```ruby
score = 85
if score >= 90
  puts "A"
elsif score >= 75
  puts "B"
else
  puts "C"
end
```

## 6. Loops
```ruby
5.times { |i| puts i }

(1..5).each do |i|
  puts i
end
```

## 7. Methods
```ruby
def greet(name)
  "Hello, #{name}!"   # string interpolation with #{}
end
puts greet("Akbar")
```

## 8. Blocks (Ruby's Superpower)
```ruby
[1, 2, 3].map { |n| n * 2 }        # [2, 4, 6]
[1, 2, 3, 4].select { |n| n.even? } # [2, 4]
```

## 9. Classes
```ruby
class Student
  def initialize(name, major)
    @name = name   # @ = instance variable
    @major = major
  end

  def introduce
    "Hi, I am #{@name}, studying #{@major}."
  end
end

s = Student.new("Akbar", "Informatics")
puts s.introduce
```

## 10. Common Mistakes
- Forgetting `end` to close `if`/`def`/`class`
- `=` vs `==`
- Symbols (`:name`) vs strings (`"name"`) — not the same thing
- Modifying an array while iterating over it

## 11. Practice Exercises
1. A Rails blog: posts, comments, users.
2. A to-do app with a hash of tasks.
3. A REST API with Sinatra or Rails.

## 12. String Manipulation
```ruby
text = "  Hello, World!  "
puts text.strip
puts text.downcase
puts text.gsub("World", "Ruby")
puts "a,b,c".split(",").inspect
puts "hello".upcase
```

## 13. File Handling
```ruby
File.write("notes.txt", "Hello, file!\n")
puts File.read("notes.txt")
File.foreach("notes.txt") { |line| puts line }
```

## 14. Error Handling
```ruby
begin
  n = Integer("abc")
rescue ArgumentError => e
  puts "Not a number: #{e.message}"
ensure
  puts "This always runs."
end
```

## 15. Mini-Project: Contact Book
A hash of names to phone numbers, with functions to add, search, list, and save/load from a JSON file. Add a text menu so the user can choose actions.

## 16. More Exercises & Interview Questions
**Exercises:**
4. A program that counts word frequency in a text file.
5. A simple Sinatra web app with two routes.
6. A to-do list that saves to a JSON file.
7. A script that renames files in a folder.
8. A number guessing game with input from the terminal.

**Interview questions:**
- What is a block? What is a Proc?
- What is the difference between a symbol and a string?
- What is a mixin? What is a module?
- How does Ruby handle nil?
- What is metaprogramming?

## 17. Next Steps
- Quickstart (official): https://www.ruby-lang.org/en/documentation/quickstart/
- Full path: https://www.theodinproject.com/paths/full-stack-ruby-on-rails
- Code examples in this repo: [`examples/ruby/`](../examples/ruby/)
