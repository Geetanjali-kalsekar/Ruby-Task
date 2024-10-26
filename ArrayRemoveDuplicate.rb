class RemoveDuplicate
	def initialize(array)
		@array = array
	end

	def remove_duplicates
		@array.uniq
	end

end

#define array
array = [1,2,4,5,5,6]
remove = RemoveDuplicate.new(array)
new_array = remove.remove_duplicates
puts new_array.inspect 
