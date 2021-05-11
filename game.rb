# Ronen Rokhit May 2021

puts "Welcome to 'Get My number!'"

print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

hidden_number = rand(100) + 1
puts "I've got a random number between 1 and 100, can you guess it?"

num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
	puts "You have #{10 - num_guesses} guesses available!"

	print "Guess a number!"
	guess = gets.to_i
	num_guesses += 1

	if guess < hidden_number
		puts "Oops, too low"
	elsif guess > hidden_number
		puts "Oops, too high"
	else
		puts "Good job #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

unless guessed_it
	puts "Sorry, you didn't get my number, it was #{hidden_number}"
end