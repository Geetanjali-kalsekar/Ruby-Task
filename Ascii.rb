class Ascii
	def initialize(character)
		@character = character
	end

	def ascii_value
		@character.ord
	end

	def display
		puts "The Ascii value of '#{@character}' is #{ascii_value}."
	end

end

#input 
puts "enter the character."
char = gets.chomp

#object
value = Ascii.new(char)
value.display