class Reverse
  def initialize(str)
  	@str = str
 	@rev_str =""
  end

  def reverse
  	@str.each_char {|char| @rev_str = char + @rev_str }
  	@rev_str
  end
 end

 # taking input

 puts "enter a string"
 str = gets.chomp
 rev_obj = Reverse.new(str)
 puts "Reverse string :#{rev_obj.reverse}"

