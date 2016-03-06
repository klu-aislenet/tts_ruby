# intialize the deck
suit = ['spade', 'heart','diamond', 'club']
rank = []
13.times { |n| rank<< n+1 }
deck = []
suit.each do |suit_value|
	rank.each do |rank_value|
		deck<< [suit_value,rank_value]
	end
end
puts "initial deck is \n #{deck}"
deck = deck.shuffle
hand = deck.pop(2)
puts "after shuffle and dealt \n #{deck}"
puts "your hand is \n #{hand}"