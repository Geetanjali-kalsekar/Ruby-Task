def even_or_odd(num)
	if num%2 == 0
		puts "#{num} is even."
	else 
		puts "#{num} is odd ."
	end
end

puts "enter the number:"
n = gets.chomp.to_i
even_or_odd(n)