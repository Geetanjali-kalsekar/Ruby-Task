class PangramChecker
	def initialize(sentence)
		@sentence = sentence
	end

	def pangram
		alphabet = ('a'..'z').to_a #create an array of all lowercase letters.
        letters_in_sentence = @sentence.downcase.chars.uniq #get unique letters in the sentence
      
      #check if all letters of the alphabet are included
      alphabet.all? {|letter| letters_in_sentence.include?(letter)}
    end
end

#input 
puts "enter a sentence:"
input_sentence = gets.chomp 

#create object 
checker = PangramChecker.new(input_sentence)

#output
if checker.pangram
  puts "The sentence is pangram."
else
  puts "The sentence is not a pangram."
end




