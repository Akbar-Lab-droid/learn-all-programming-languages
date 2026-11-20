# Temperature converter - R
celsius_to_fahrenheit <- function(c) {
  c * 9 / 5 + 32
}

fahrenheit_to_celsius <- function(f) {
  (f - 32) * 5 / 9
}

print(paste("25 C =", celsius_to_fahrenheit(25), "F"))
print(paste("77 F =", fahrenheit_to_celsius(77), "C"))
