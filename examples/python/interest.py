# Simple & compound interest - Python
def simple_interest(principal, rate, years):
    return principal * rate * years / 100

def compound_interest(principal, rate, years):
    return principal * (1 + rate / 100) ** years - principal

p, r, y = 1000, 5, 3
print(f"Principal: ${p}, Rate: {r}%, Years: {y}")
print(f"Simple interest: ${simple_interest(p, r, y):.2f}")
print(f"Compound interest: ${compound_interest(p, r, y):.2f}")
print(f"Total with compound: ${p + compound_interest(p, r, y):.2f}")
