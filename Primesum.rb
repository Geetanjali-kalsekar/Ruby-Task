class PrimeSum
  def initialize(num)
    @num = num
  end

  def prime?(number)
    # Handle numbers less than 2
    return false if number < 2 

    count = 0
    j = 1

    while j <= number
      if number % j == 0
        count += 1  
      end
      j += 1 
    end

    count == 2
  end

  def prime_sum
    sum = 0
    for i in 2..@num  # Start from 2, as 1 is not a prime number
      sum += i if prime?(i)  # Check if i is prime and add to sum
    end
    sum
  end
end

# Input
puts "Enter the number:"
n = gets.chomp.to_i

# Object
primeobj = PrimeSum.new(n)

# Check if the input number is prime
if primeobj.prime?(n)
  puts "#{n} is prime."
else
  puts "#{n} is not prime."
end

# Calculate and display the sum of prime numbers up to n
sum = primeobj.prime_sum
puts "The sum of prime numbers up to #{n} is: #{sum}"
