# Password generator - R
generate_password <- function(length = 12) {
  chars <- strsplit("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*", "")[[1]]
  paste(sample(chars, length, replace = TRUE), collapse = "")
}

set.seed(42)  # fixed seed so the demo is repeatable
for (i in 1:3) {
  print(paste("Password", i, ":", generate_password()))
}
