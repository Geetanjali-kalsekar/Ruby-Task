class ReverseArray
	def initialize(array)
	 @array = array
	end

	def reverse
		reversed_array = []
		@array.each do |element|
			reversed_array.unshift(element) #add each element to the front of the new array.
		end
		reversed_array
	end
end

#object 
arr = [2 ,4 , 6, 7, 5]
reverseobj = ReverseArray.new(arr)
reverse = reverseobj.reverse
puts reverse.inspect #display
