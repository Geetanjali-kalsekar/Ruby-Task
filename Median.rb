class Median
	def initialize
		@num = []
	end
  
    def add_element(num)
    	@num << num
    end
     
	def median

	    return nil if @num.empty?

		sorted = @num.sort
		length = sorted.length

	   if length.odd?
	   	 # for odd length ,return the middle element.

	   	 sorted[length /2]
	   else
	     # for even length, return the average of the two middle elements
	   mid_index = length/2
	   (sorted[mid_index -1] + sorted[mid_index]) / 2.0

	  end
	end


	def display
		puts " The median is #{median}."
	end
end

#input
mid = Median.new
mid.add_element(3)
mid.add_element(4)
mid.add_element(5)
mid.add_element(7)
mid.add_element(8)

mid.display
