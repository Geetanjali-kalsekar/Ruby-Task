class Factorial
	def initialize(num)
		@num = num
	end

	def calculate 
		factorial(@num)
	end
     
    def factorial(n)

    	if n==0||n==1
    		return 1
    	else 
    	n * factorial(n-1)
        end
    end
end

#object and taking input
puts "enter a number:"
input = gets.chomp.to_i
fact = Factorial.new(input)
puts "The factorial of #{input} is #{fact.calculate}."
