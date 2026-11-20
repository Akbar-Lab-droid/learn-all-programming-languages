# Shell / Bash — Complete Mini-Course

## 1. What Is Bash?
Bash is the language of the terminal. It automates servers, deployments, and boring repetitive work — a superpower for every programmer.

## 2. Hello World
```bash
#!/bin/bash
echo "Hello, World!"
```

## 3. Variables
```bash
name="Akbar"
echo "Hello, $name!"   # Hello, Akbar!
echo ${name}           # same thing, safer form
```

## 4. Conditionals
```bash
score=85
if [ "$score" -ge 90 ]; then
  echo "A"
elif [ "$score" -ge 75 ]; then
  echo "B"
else
  echo "C"
fi
```

## 5. Loops
```bash
for i in {1..5}; do
  echo "Number $i"
done

for file in *.txt; do
  echo "Found: $file"
done
```

## 6. Functions
```bash
greet() {
  echo "Hello, $1!"   # $1 = first argument
}
greet "Akbar"
```

## 7. Pipes & Redirection
```bash
ls -la | grep ".md"        # filter output
echo "log line" >> app.log  # append to file
cat file.txt | sort | uniq   # sort and remove duplicates
```

## 8. Useful Commands
```bash
pwd            # where am I?
ls -la         # list files
cd folder      # change directory
mkdir newdir   # create directory
grep "error" app.log   # search inside a file
find . -name "*.py"    # find files
chmod +x script.sh     # make executable
```

## 9. A Real Script: Backup
```bash
#!/bin/bash
# Usage: ./backup.sh <folder>
SOURCE="$1"
TARGET="backup-$(date +%Y%m%d).tar.gz"

if [ -z "$SOURCE" ]; then
  echo "Usage: ./backup.sh <folder>"
  exit 1
fi

tar -czf "$TARGET" "$SOURCE"
echo "Backup complete: $TARGET"
```

## 10. Common Mistakes
- Spaces around `=` in assignments (`x = 1` is WRONG, use `x=1`)
- Forgetting quotes: `"$name"` vs `$name` (unquoted breaks on spaces)
- Forgetting `chmod +x` before running a script
- `=` vs `-eq` for numbers in `[ ]` tests

## 11. Practice Exercises
1. A backup script that archives a folder with today's date.
2. A script that renames all `.jpeg` files to `.jpg` in a folder.
3. A server monitor: check disk space, warn if over 80%.

## 12. Arguments & Environment Variables
```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo "Home directory: $HOME"
echo "Current user: $USER"
```

## 13. Text Processing with grep, sed & awk
```bash
grep "error" app.log              # find lines with "error"
grep -c "error" app.log           # count them
awk '{print $1}' data.txt         # print the first column
sed 's/old/new/g' file.txt        # replace text
sort names.txt | uniq              # sort and remove duplicates
wc -l file.txt                     # count lines
```

## 14. Cron Jobs (Scheduling)
```bash
# Edit your schedule:
crontab -e
# Examples:
# 0 8 * * * /home/user/backup.sh    # every day at 08:00
# */15 * * * * /home/user/check.sh  # every 15 minutes
```

## 15. Mini-Project: System Monitor Script
A script that checks disk usage, memory usage, and the top 5 processes by CPU, then appends a dated report to `monitor.log`. Add it to cron so it runs every hour.

## 16. More Exercises & Interview Questions
**Exercises:**
4. A script that backs up a folder and keeps only the last 7 backups.
5. A script that watches a log file and alerts you on errors.
6. A script that installs a list of packages from a file.
7. A script that renames photos by their date.
8. A script that checks if a website is up and logs the result.

**Interview questions:**
- What is the difference between `>` and `>>`?
- What does `2>&1` mean?
- What is the difference between `$*` and `$@`?
- How do you make a script executable?
- What is a cron job?

## 17. Next Steps
- Interactive course: https://linuxjourney.com
- Tutorial: https://www.shellscript.sh
- Code examples in this repo: [`examples/shell/`](../examples/shell/)
