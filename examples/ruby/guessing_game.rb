# Number guessing game - Ruby (demo with fixed guesses)
secret = 42
guesses = [10, 50, 42]
guesses.each do |guess|
  if guess < secret
    puts "#{guess} is too low!"
  elsif guess > secret
    puts "#{guess} is too high!"
  else
    puts "#{guess} is correct! You win!"
    break
  end
end
