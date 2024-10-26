class Pyramid
  def initialize(num)
    @num = num
  end

  def pyramid
    for i in 1..@num do
      # Print spaces
      for j in 1..(@num - i) do
        print " "
      end
      
      # Print asterisks
      for k in 1..(2 * i - 1) do
        print "*"
      end
      
      # Move to the next line
      puts ""
    end
  end
end

# Taking input
puts "Enter the number of rows:"
n = gets.chomp.to_i

# Create an object and call the pyramid method
p = Pyramid.new(n)
p.pyramid
