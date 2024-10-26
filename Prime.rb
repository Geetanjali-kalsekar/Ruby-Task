class Prime
  def initialize(num)
    @num = num
  end

  def prime
     # Handle numbers less than 2
    return "#{@num} is not prime." if @num < 2 

    count = 0
    j = 1

    while j <= @num
      if @num % j == 0
        count += 1  
      end
      j += 1 
    end

    if count == 2
      "#{@num} is prime."
    else
      "#{@num} is not prime."
    end
  end
end

# Input
puts "Enter the number:"
n = gets.chomp.to_i

# Object
primeobj = Prime.new(n)
puts primeobj.prime  # Call the method 
