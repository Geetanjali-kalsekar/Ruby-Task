class Swap
 # attr_accessor :a, :b
 def initialize(a,b)
 	@a = a
 	@b = b
 end

 #Method to swap 

 def swapping
    @a = @a + @b
    @b = @a - @b
    @a = @a - @b
 end

 def display
   puts" a: #{@a} , b: #{@b}"
 end
end

#input
puts "enter the value of a:"
x = gets.chomp.to_i

puts "enter the value of b:"
y = gets.chomp.to_i

#object
swap = Swap.new(x,y)
puts "Before swapping"
swap.display

swap.swapping
puts "After swapping"
swap.display






