# Prime checker - Ruby
def prime?(n)
  return false if n < 2
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  true
end

[2, 7, 10, 17, 25, 29].each do |n|
  puts "#{n} is prime? #{prime?(n)}"
end
print "Primes up to 50: "
(2..50).each { |n| print "#{n} " if prime?(n) }
puts
