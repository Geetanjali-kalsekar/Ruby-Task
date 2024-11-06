# count character occurence.
	
class CharacterCounter
	def initialize(string ,character)
		@string = string
		@character =character
	end

	def frequency
		count = 0

		for i in 0...@string.length
			if @string[i] == @character
				count = count +1
			end
		end

		count #return count
	end
end

#input
puts "Enter a string:"
input_string = gets.chomp

puts "Enter a character to count:"
input_character = gets.chomp

#create object and count frequency of the character.

counter = CharacterCounter.new(input_string,input_character)

frequency_of_character = counter.frequency

puts "The character #{input_character} frequency in a string is : #{frequency_of_character} "





