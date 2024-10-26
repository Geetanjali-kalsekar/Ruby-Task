class DecimalConverter
	def initialize(decimal_number)
		@decimal_number = decimal_number
	end

	def to_binary
		return '0' if @decimal_number == 0 #Handle Zero case

		binary =''
		number = @decimal_number

		while number > 0
			binary = (number % 2).to_s + binary 
			number /=2 #divide by 2
		end

		binary
	end
end

#input
puts "enter a decimal number:"
decimal_input = gets.chomp.to_i # get decimal input as a integer

#create object
converter = DecimalConverter.new(decimal_input)
binary_value = converter.to_binary #call method

#output
puts "The binary value is:#{binary_value}"
