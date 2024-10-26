class Anagramchecker
	def initialize(string1,string2)
		@string1 = string1
		@string2 = string2
	end

	def anagram
	  normalize(@string1) == normalize(@string2)
	end

	private

	def normalize(string)
		string.downcase.chars.sort.join #Normalize by sorting characters
	end
end

#input

puts "enter the first string:"
string1 = gets.chomp 

puts "enter the second string:"
string2 = gets.chomp

#create an object
checker = Anagramchecker.new(string1 , string2)

#output
if checker.anagram
 puts "#{string1} and #{string2} are anagrams."
else
 puts "#{string1} and #{string2} are
 not anagrams."
end
