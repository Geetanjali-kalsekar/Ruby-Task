class DigitSum
	def initialize(num)
		@num = num
	end

	def sum_of_digits
		sum = 0
		# num = @num.abs #handle negative number

		while @num > 0
			sum = sum + @num % 10  #add last digit to the sum
            @num = @num/10 #Remove the last digit 
        end

        sum
    end
end

# input
puts "enter the number "
num = gets.chomp.to_i

#object
digitsum = DigitSum.new(num)
puts " sum of digits of the given number is :#{digitsum.sum_of_digits}"


