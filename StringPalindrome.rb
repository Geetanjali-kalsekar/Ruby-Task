class Palindrome
	def initialize(str)
	   @str =str
	end

	def palindrome
		left = 0
		right = @str.length-1

		while left < right
			return false if @str[left] != @str[right]

			left = left+1
			right = right-1

		end
	true
    end
end

# input
puts "enter the string:"
str = gets.chomp

#object
palindromeobj = Palindrome.new(str)
puts "palindrome string is : #{palindromeobj.palindrome}"
