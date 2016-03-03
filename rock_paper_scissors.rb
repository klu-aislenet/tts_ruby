input = ''
while input != 'done'
	puts "rock paper scissors?"
	input = gets.chomp.downcase

	ruby_input = rand(1..3)
	if input == 'rock'
		input_i=1
	elsif input == 'paper'
			input_i=2
	elsif input == "scissors"

			input_i = 3
	else
			input_i = 4
	end
	puts "#{input} #{input_i}"
	result = input_i-ruby_input

	if input_i == 4
		puts input + " is not an answer"
	elsif result%3 ==0
		puts 'tie'
	elsif result%3 ==1
		puts 'you win'
	elsif result%3 ==2
		puts 'you lose'
	end
end
			
