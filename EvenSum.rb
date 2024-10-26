# sum of even numbers

class EvenSum
	def initialize(num)
		@num = num
	end
    
    def even_sum
       sum = 0
       for i in (1..@num)do
       if (i % 2 == 0)
         sum = sum + i
       
  
       end
   end
   return sum
    end
end
 
#input 
 puts " enter the number , where you want to calculate even no.sum :"
 n = gets.chomp.to_i

#object
 soe = EvenSum.new(n)

 puts " sum of the even number is: #{soe.even_sum}"