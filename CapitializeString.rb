class Capitalize
  def initialize(str)
    @string = str
  end

  def capitalize_letter
    new_string = ''
    @string.each_char.with_index do |char, index|
      if index == 0 || @string[index - 1] == ' '
        new_string += char.upcase
      else
        new_string += char
      end
    end
    new_string
  end
end

# Input
puts "Enter the string:"
str = gets.chomp

# Object
converter = Capitalize.new(str)
result = converter.capitalize_letter
puts "New string is: #{result}"
