class LeapYear
	def initialize(year)
		@year = year
	end

	def leap_year
	    if (@year % 4 == 0 && @year %100 != 0) || ( @year % 400 == 0)
	     	true
	    else
       		false
       	end
    end
end

#input 
puts "enter a year."
year = gets.chomp.to_i

#object
leapyear = LeapYear.new(year)
puts "year is leap year True/false: #{leapyear.leap_year}"
