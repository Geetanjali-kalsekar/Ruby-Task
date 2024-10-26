class LargestNum
	def initialize
	   @array = []
    end

    def input_array
    puts "Enter element of array separated by spaces:"
    n = gets.chomp 
    numbers_as_strings = n.split  # Split the input into an array of strings
    # @array = []  # Initialize an empty array

    # Convert each string to an integer and add to @array
    numbers_as_strings.each do |str|
      @array << str.to_i
    end
  end

    def largest 
       return nil if @array.empty?

       largest_no = @array[0] # assume the first element is largest.

       #iterate in array

       for i in 1...@array.length
          if @array[i] > largest_no
             largest_no = @array[i] #update largest
          end
       end

       largest_no

    end
end

#
findlarge = LargestNum.new
findlarge.input_array
largest_number = findlarge.largest
 if largest_number
 	puts "The largest number is : #{largest_number}"
 else
 	puts " the array is empty"
 end






