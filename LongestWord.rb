#longest word in a string

class LongestWord
	def initialize(string)
		@string = string
	end

	def find_longest_word
		longest_word = ''
		current_word = ''

		for i in 0...@string.length
			char = @string[i]
             
             #check if the character is not a space.
			if char != ' ' && char != '\n' && char != '\t'
				current_word = current_word + char

		    else
                  #check current word is larger than longest word.
		      if current_word.length > longest_word.length
		      	longest_word = current_word

		      end

		      current_word = '' #reset the current word
		    end
		end

		longest_word  #return longest word
	end
end

#input
puts "enter a string :"
input_string = gets.chomp

#object and method call
finder = LongestWord.new(input_string)
longest_word = finder.find_longest_word

puts " The longest word is :#{longest_word}"


