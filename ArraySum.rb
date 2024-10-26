class ArraySum 
  def initialize
    @array = []  # Initialize @array as an instance variable
  end

  def input_array
    puts "Enter element of array separated by spaces:"
    n = gets.chomp 
    numbers_as_strings = n.split  # Split the input into an array of strings
    @array = []  # Initialize an empty array

    # Convert each string to an integer and add to @array
    numbers_as_strings.each do |str|
      @array << str.to_i
    end
  end

  def sum 
    total = 0
    # Iterate using a for loop
    for num in @array
      total += num  
    end

    total
  end
end

# Create an object and execute the methods
sum_of_array = ArraySum.new
sum_of_array.input_array
puts "The sum of the array is: #{sum_of_array.sum}"
