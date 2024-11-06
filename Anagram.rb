class Anagram
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def anagram_check
    # Check if the lengths are the same
    return false if @string1.length != @string2.length

    # Sort the strings and compare
    sorted_string1 = @string1.chars.sort.join
    sorted_string2 = @string2.chars.sort.join

    # If the sorted strings are equal, they are anagrams
    sorted_string1 == sorted_string2
  end
end

# Input
puts "Enter the first string:"
string1 = gets.chomp

puts "Enter the second string:"
string2 = gets.chomp

# Create an object and check for anagram
checker = Anagram.new(string1, string2)
result = checker.anagram_check

puts "Result is: #{result}"
