class Account
	def initialize(name, balance, pin)
		@name, @balance, @pin = name, balance, pin
	end

	def validate 
		@valid=0

		until @valid ==1 do 
			puts "Please input a 4-digit pin:"
			pin = gets.chomp.downcase
			if pin.to_i == 0
				if pin =='0000'
					if @pin == 0
						@valid=1
					end
				end
			elsif pin.to_i==@pin
				@valid = 1
			else
				@valid = 0
			end
		end
	end

	def name
		@name
	end

	def check_balance
		if @valid !=1
			validate
		end
		puts "high #{@name}, your current balance is #{@balance}"
	end


	def deposit 
		if @valid !=1
			validate
		end
		puts "high #{@name}, your current balance is #{@balance}"
		puts 'how much do you want to deposit?'
		amount = gets.chomp.to_i
		@balance += amount
		puts "your new balance is #{@balance}"
	end

	def withdraw

		if @valid !=1
			validate
		end
		puts "high #{@name}, your current balance is #{@balance}"
		puts 'how much do you want to withdraw?'
		amount = gets.chomp.to_i
		if @balance > amount
			@balance -= amount
			puts "your new balance is #{@balance}"
		else
			puts 'sorry, you don\'t have enough balance in your account.'
		end
	end
end





acnt1 = Account.new("ken",100,1234)

input = 0
until input == 4 do 

	puts "high #{acnt1.name}, what can I do for you?"
	puts "1: check balance, 2:deposit, 3: withdraw, 4:exit"

	input = gets.chomp.to_i
	
	if input ==1
		acnt1.check_balance
	elsif input ==2
		acnt1.deposit
	elsif input ==3
		acnt1.withdraw
	end
			
end
