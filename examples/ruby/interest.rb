# Simple & compound interest - Ruby
def simple_interest(principal, rate, years)
  principal * rate * years / 100.0
end

def compound_interest(principal, rate, years)
  principal * (1 + rate / 100.0)**years - principal
end

p = 1000; r = 5; y = 3
puts "Simple interest: $#{simple_interest(p, r, y).round(2)}"
puts "Compound interest: $#{compound_interest(p, r, y).round(2)}"
