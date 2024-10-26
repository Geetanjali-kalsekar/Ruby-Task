# Perfect number= A Positive integer that is equal to the sum of its positive proper divisor.
#eg. 6 is perfect no.
#1+2+3 = 6

class PerfectNum 
	def initialize(num)
		@num = num
	end

	def perfect
		return false if @num<1

		sum_of_divisor =
		 (1...@num).select{|i|@num % i==0}.sum
		sum_of_divisor == @number
		 end

		def display_result
		 	if perfect
		 		puts "#{@num} is a perfect number."
		 	else
		 		puts"#{@num} is not a perfect number."
		 	end
		end
	end

#input

puts"enter the number:"
n = gets.chomp.to_i

#object
perfectnum = PerfectNum.new(n)
puts "check the number is perfert or not:#{perfectnum.perfect}"