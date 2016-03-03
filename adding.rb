input = ""
sum = 0
until input == "done"
	puts "what is the number"
	input= gets.chomp.downcase
	sum += input.to_i
end
puts "the sum is #{sum}"
