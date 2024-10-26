class Fizzbuzz
	def initialize(limit)
		@limit = limit
	end

	def play
		(1..@limit).each do|num|
			if num % 3 == 0 && num % 5 == 0
				puts"FizzBuzz"
			elsif num % 3 == 0
				puts "Fizz"
			elsif num % 5 == 0
				puts "Buzz"
			else
				puts num
			end
		end
	end
end


#input
puts "enter a limit:"
limits = gets.chomp.to_i

#object
fizzbuzz = Fizzbuzz.new(limits)
fizzbuzz.play