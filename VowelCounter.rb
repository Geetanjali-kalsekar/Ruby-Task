class VowelCounter
	def initialize(str)
		@str = str
	end

	def count_vowels
		@count = 0
		@str.each_char do |char|
		  
		  if char.downcase =~ /[aeiou]/  #regular expression /..../ slahes define regex pattern.
		  #and [...] it defines the char pattern
		  @count += 1 
		end
	      end
		 @count
	end

end
   
 # input

 puts" enter a string"
 str = gets.chomp

 # object
  counter = VowelCounter.new(str)
  puts "Vowel in a string is :#{counter.count_vowels}"

