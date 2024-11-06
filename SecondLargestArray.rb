class SecondLargest
  attr_accessor :array

  def initialize
    @array = []
  end

  def input_array
    puts "Enter size of the array:"
    array_size = gets.chomp.to_i

    # Insert elements into the array
    puts "Insert the elements into the array:"
    for i in 0...array_size
      value = gets.chomp.to_i
      @array << value
    end
  end

  def second_largest
    return nil if @array.size < 2 # Handle case with less than 2 elements

    largest = @array[0]
    slargest = -1
    
    @array.each do |num|
      if num > largest
        slargest = largest
        largest = num
      elsif num > slargest && num != largest
        slargest = num
      end
    end
    
    slargest == -1? nil : slargest # Return nil if second largest doesn't exist
  end

  def display
    puts "Given array is: #{@array.inspect}"
  end
end

# Object creation
seclarge = SecondLargest.new
seclarge.input_array
seclarge.display
result = seclarge.second_largest
if result
  puts "Second largest element is: #{result}"
else
  puts "There is no second largest element."
end
