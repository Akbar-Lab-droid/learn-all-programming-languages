# Simple & compound interest - R
simple_interest <- function(principal, rate, years) {
  principal * rate * years / 100
}

compound_interest <- function(principal, rate, years) {
  principal * (1 + rate / 100) ^ years - principal
}

p <- 1000; r <- 5; y <- 3
print(paste("Simple interest: $", round(simple_interest(p, r, y), 2)))
print(paste("Compound interest: $", round(compound_interest(p, r, y), 2)))
