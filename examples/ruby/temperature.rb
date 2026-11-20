# Temperature converter - Ruby
def celsius_to_fahrenheit(c)
  c * 9 / 5.0 + 32
end

def fahrenheit_to_celsius(f)
  (f - 32) * 5 / 9.0
end

puts "25 C = #{celsius_to_fahrenheit(25)} F"
puts "77 F = #{fahrenheit_to_celsius(77)} C"
