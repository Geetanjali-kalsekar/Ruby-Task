class GCD
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def gcd
    # Find the minimum of the two numbers
    min_num = [@num1, @num2].min
    
    # Start from the minimum and go down to 1
    (1..min_num).reverse_each do |i|
      if @num1 % i == 0 && @num2 % i == 0
        return i  # Return the first common factor found
      end
    end
    
    1  # If no common factors are found, GCD is 1
  end
end

# Input
puts "Enter 1st number:"
num1 = gets.chomp.to_i
puts "Enter 2nd number:"
num2 = gets.chomp.to_i

# Create an object and calculate GCD
calculate = GCD.new(num1, num2)
puts "The GCD of #{num1} and #{num2} is: #{calculate.gcd}"
