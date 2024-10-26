class LCM
	def initialize(num1,num2)
		@num1 = num1
		@num2 = num2
	end

	def gcd(a,b)
		while b!=0
			a,b = b, a % b #apply the euclidean algorithm
		end

		a
	end

	def lcm
	    return 0 if @num1 == 0 || @num2 == 0 #Lcm is 0 if any number is 0.
        (@num1 * @num2).abs/gcd(@num1 ,@num2)   #lcm formula
    end
end

#input
puts " enter 1st number:"
num1 = gets.chomp.to_i

puts " enter 2nd number:"
num2 = gets.chomp.to_i

# object
calculate = LCM.new(num1,num2)
puts " lcm of #{num1} and #{num2} is : #{calculate.lcm}"


