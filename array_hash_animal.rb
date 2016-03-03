arr = ['dog','cat','rat','mouse','horse','donkey']
sound = {'dog'=>'woof', 'cat'=>'meow','rat'=>"rat_noise",
	'mouse'=>'mouse_noise','horse'=>'horse_noise','donkey'=>'ang'}
arr.each do |x|
	puts sound[x]
	if x == 'horse'
		puts "I love #{x}"
	end
end
