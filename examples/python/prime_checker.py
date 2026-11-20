# Prime checker - Python
def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

for n in [2, 7, 10, 17, 25, 29]:
    print(f"{n} is prime? {is_prime(n)}")

print("Primes up to 50:", [n for n in range(2, 51) if is_prime(n)])
