class RemoveVowel
  def initialize(string)
    @string = string
  end

  def remove_vowel
    new_string = ''
    @string.each_char do |char|
      # Check if the character is a vowel
      if char.downcase != 'a' && char.downcase != 'e' && char.downcase != 'i' && 
         char.downcase != 'o' && char.downcase != 'u'
        new_string += char  # Add non-vowel characters to new_string
      end
    end
    new_string
  end
end

# Input
puts "Enter the string:"
string = gets.chomp

# Object and method call
remove = RemoveVowel.new(string)
result = remove.remove_vowel
puts "New string is: #{result}"
