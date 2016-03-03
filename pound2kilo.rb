def p2k (pounds)
	return pounds*0.454
end
puts "weight in pounds?"
pounds= gets.chomp.to_i
kilos = p2k(pounds)
puts "#{pounds} pounds equals to #{kilos} kilos"
