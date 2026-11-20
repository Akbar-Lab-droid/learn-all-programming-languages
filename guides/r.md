# R — Complete Mini-Course

## 1. What Is R?
R is the language of statistics and data analysis. Used by researchers, statisticians, and data analysts everywhere.

## 2. Hello World
```r
print("Hello, World!")
```

## 3. Variables & Vectors
```r
name <- "Akbar"
age <- 20
scores <- c(80, 85, 90, 75, 95)  # a vector
print(scores[1])  # 80 (R counts from 1!)
```

## 4. Operators
```r
print(10 + 3)  # 13
print(10 / 3)  # 3.333...
print(10 %% 3) # 1 (remainder)
print(2 ^ 3)   # 8 (power)
```

## 5. Conditionals
```r
score <- 85
if (score >= 90) {
  print("A")
} else if (score >= 75) {
  print("B")
} else {
  print("C")
}
```

## 6. Loops
```r
for (i in 1:5) {
  print(i)
}
```

## 7. Functions
```r
greet <- function(name) {
  paste("Hello,", name, "!")
}
print(greet("Akbar"))
```

## 8. Data Frames
```r
students <- data.frame(
  name = c("Akbar", "Budi", "Citra"),
  major = c("Informatics", "Economics", "Law"),
  score = c(90, 85, 88)
)
print(students$name)              # the name column
print(students[students$score > 86, ])  # filter rows
```

## 9. Quick Statistics
```r
scores <- c(80, 85, 90, 75, 95)
mean(scores)    # 85
median(scores)  # 85
max(scores)     # 95
min(scores)     # 75
summary(scores) # min, quartiles, mean, max
```

## 10. Plotting
```r
plot(scores, type = "b", main = "Scores", xlab = "Student", ylab = "Score")
```

## 11. Common Mistakes
- R counts from 1, not 0 — `scores[1]` is the FIRST element
- `<-` for assignment (not `=`, though `=` works)
- Forgetting that `NA` is not `0` or `""`
- `==` vs `=` in conditions

## 12. Practice Exercises
1. Analyze a survey: load a CSV, compute averages per group.
2. Make a Shiny dashboard for your data.
3. Write an R Markdown report with plots.

## 13. String Manipulation
```r
text <- "  Hello, World!  "
trimws(text)
tolower(text)
gsub("World", "R", text)
strsplit("a,b,c", ",")
nchar("Hello")
```

## 14. File Handling
```r
# Write a CSV
write.csv(students, "students.csv", row.names = FALSE)
# Read it back
data <- read.csv("students.csv")
print(data)
# Read a text file line by line
lines <- readLines("notes.txt")
```

## 15. Error Handling
```r
result <- tryCatch(
  {
    as.numeric("abc")  # produces NA with a warning
  },
  warning = function(w) {
    print(paste("Warning:", w$message))
    NA
  },
  error = function(e) {
    print(paste("Error:", e$message))
    NA
  }
)
```

## 16. Mini-Project: Survey Analysis
Load a survey CSV, clean the NA values, compute group means with `aggregate()`, draw a bar plot, and save an R Markdown report. End with one insight sentence: what did the data actually say?

## 17. More Exercises & Interview Questions
**Exercises:**
4. Analyze a real dataset: load it, clean NAs, summarize by group.
5. A Shiny dashboard with a plot and a filter.
6. A function that reads many CSVs and combines them.
7. A correlation analysis with a heatmap.
8. An R Markdown report with plots and tables.

**Interview questions:**
- What is the difference between a vector and a list?
- What is a data frame?
- How do you handle missing values (NA)?
- What is the difference between `=` and `<-`?
- What is the tidyverse?

## 18. Next Steps
- Free book: https://r4ds.had.co.nz
- Interactive: https://swirlstats.com
- Code examples in this repo: [`examples/r/`](../examples/r/)
