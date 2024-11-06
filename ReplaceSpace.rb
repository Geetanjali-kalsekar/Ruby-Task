#replace spaces with underscore.

class SpaceToUnderscore
	def initialize(string)
		@string = string
	end

	def replace_spaces
		new_string = ''

		for i in 0...@string.length
		   char = @string[i]

		  if char == ' '
		  	new_string = new_string + '_' #add underscore in place of space.

		  else
		  	new_string = new_string + char
		  end
		end

		new_string #return new string.
	end
end

#input
puts " enter a string :"
input_string = gets.chomp

#create object and call methods
 replacer = SpaceToUnderscore.new(input_string)
 result_string = replacer.replace_spaces

 puts "The modified string is :#{result_string}"

