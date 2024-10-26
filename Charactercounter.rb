class Charactercounter
	def initialize(string)
		@string = string
	end

	def count_occurences(character)
	   @string.count(character) #count the occurence of character
	end
end

#input
puts"Enter a string:"
input_string = gets.chomp

puts" enter the character to count :"
character_to_count = gets.chomp

#create object
counter = Charactercounter.new(input_string)
occurences = counter.count_occurences(character_to_count)

puts "The character '#{character_to_count} occurs #{occurences} times in the string."