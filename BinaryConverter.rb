class BinaryConverter
  def initialize(binary_str)
    @binary_str = binary_str
  end

  def to_decimal
    decimal = 0
    length = @binary_str.length

    # Convert binary to decimal
    for i in 0...length
      bit = @binary_str[length - 1 - i].to_i  # Get each bit from the end
      decimal += bit * (2 ** i)  # Calculate the decimal value
    end

    decimal
  end
end

# Input
puts "Enter a binary number:"
binary_input = gets.chomp  # Get binary input as a string

# Create an object and convert to decimal
converter = BinaryConverter.new(binary_input)
decimal_value = converter.to_decimal  # Call the method to convert

# Output the result
puts "The decimal value is: #{decimal_value}"
