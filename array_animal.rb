arr = ['dog','cat','rat','mouse','horse','donkey']
arr.each do |x|
	puts x
	if x == 'horse'
		puts "I love #{x}"
	end
end
