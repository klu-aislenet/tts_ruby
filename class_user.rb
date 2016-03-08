class User
	def initialize (name, email, id)
		@name , @email, @id=name, email, id
	end
	def name
		@name
	end

end

class Pet
	def initialize (name, age, breed, type)
		@name, @age, @breed, @type= name, age, breed, type
	end

	def sound
		sound = ''
		if @type=='dog' 
			sound = 'woof'
		elsif @type == 'cat'
			sound = 'meow'
		elsif @type == 'cow'
			sound = 'moo'
		else
			sound = 'who knows what'
		end
		sound
	end

	def age
		@age
	end

end

class Product
	def initialize (name, brand, manufacturer,quantity)
		@name, @brand, @manufacturer, @quantity= name, brand, manufacturer,quantity
	end

	def brand
		@brand
	end
	def quantity 
		@quantity
	end
	def increase
		@quantity += 1
	end
	def decrease
		@quantity -= 1
	end

end

class Vehicle
	def initialize(type, location, speed)
		@type, @location, @speed = type, location, speed
	end
	def move(new_loc)
		@location = new_loc
	end
	def accelerate 
		@speed += 1
	end
	def deccelerate
		@speed -=1
		if @speed < 0
			@speed = 0
		end
		@speed
	end
	def stop
		@speed = 0
	end
end

user1=User.new('ken', 'ken@123.com',33)
dog= Pet.new('tiger',5, 'bulldog', 'dog')
watch= Product.new('apple watch2','apple','apple',10)
puts user1.name
puts dog.sound
puts watch.quantity
watch.increase
puts watch.quantity
puts watch.decrease
puts watch.decrease

car = Vehicle.new('car',[1,1],0)
puts car.move([2,2])
puts car.deccelerate
puts car.accelerate
puts car.accelerate
puts car.accelerate
puts car.deccelerate
puts car.stop