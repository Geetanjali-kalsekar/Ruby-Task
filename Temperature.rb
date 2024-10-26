class Temperature
	def initialize(temperature,scale)
		@temperature = temperature
		@scale = scale.downcase
	end

	def convert
		case @scale

		when 'c'
			to_fahrenheit
		when 'f'
			to_celcius
		else
			"Invalid scale. Use 'C' for celcius or 'F' for Fahrenheit."
		end
	end

	private

	def to_fahrenheit
	   (@temperature*9.0/5.0)+32
	end

	def to_celcius
		(@temperature - 32)*5.0 /9.0
	end
end

#input
puts "Enter temperature :"
temp = gets.chomp.to_f

puts "Enter scale (C for celcius ,F for Fahrenheit):"
scale = gets.chomp

convertor = Temperature.new(temp,scale)
convert_temp = convertor.convert
puts "Converted temperature : #{convert_temp}"
