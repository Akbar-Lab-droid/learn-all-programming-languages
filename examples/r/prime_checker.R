# Prime checker - R
is_prime <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  TRUE
}

for (n in c(2, 7, 10, 17, 25, 29)) {
  print(paste(n, "is prime?", is_prime(n)))
}
primes <- c()
for (n in 2:50) {
  if (is_prime(n)) primes <- c(primes, n)
}
print(paste("Primes up to 50:", paste(primes, collapse = " ")))
