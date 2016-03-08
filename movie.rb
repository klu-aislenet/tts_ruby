class Movie
	def initialize (name, year, director, rating)
		@name, @year, @director, @rating = name, year,director,rating
	end

	def name
		@name
	end

	def year
		@year
	end

	def director
		@director
	end

	def rating
		@rating

	end

end

newmovie = Movie.new('godfather', 'xxxx','diector_who',5)

puts "#{newmovie.name} in year #{newmovie.year} directed by #{newmovie.director} is a #{newmovie.rating} star movie."
