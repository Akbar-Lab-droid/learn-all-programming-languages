# Password generator - Ruby
def generate_password(length = 12)
  chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a + %w[! @ # $ % ^ & *]
  Array.new(length) { chars.sample }.join
end

(1..3).each do |i|
  puts "Password #{i}: #{generate_password}"
end
